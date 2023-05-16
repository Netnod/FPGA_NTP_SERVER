# ------------------------------------------------------------------------------
#  Copyright (c) 2021-2023 Arista Networks, Inc. All rights reserved.
# ------------------------------------------------------------------------------
#  Author:
#    fdk-support@arista.com
#
#  Description:
#    Licensed under BSD 3-clause license:
#      https://opensource.org/licenses/BSD-3-Clause
#
#  Tags:
#    license-bsd-3-clause
#
# ------------------------------------------------------------------------------

from __future__ import absolute_import, print_function

import re
import time
from collections import OrderedDict

import six.moves.configparser
import mosapi

from .appname import appname
from .format_docstring import format_docstring

# Utilities that are potentially unavailable depending on MOS version
try:
    from file_safety.atomic_rename import open_and_atomic_rename_on_close
except ImportError:
    open_and_atomic_rename_on_close = open


logger = mosapi.getLogger(appname)


class ApplicationConfig(object):
    def __init__(self, appname, debug=False):  # pylint: disable=redefined-outer-name
        self.__appname = appname  # pylint: disable=unused-private-member
        self.__app = None
        self.__debug = debug
        self.__conf_filename = None
        self.__default = None
        self.__items = []

    @property
    def conf_filename(self):
        if not self.__conf_filename:
            raise Exception("conf_filename hasn't been set yet!")
        return self.__conf_filename

    @conf_filename.setter
    def conf_filename(self, value):
        if self.__conf_filename is None:
            self.__conf_filename = value
            return
        if self.__conf_filename != value:
            raise Exception(
                "Cannot set conf_filename twice! Currently: {}, New Value: {}".format(self.__conf_filename, value)
            )

    def write_default_config(self):
        # Write the default config items
        config = six.moves.configparser.RawConfigParser(allow_no_value=True)
        config.read(self.conf_filename)
        if config._defaults != self.default:  # pylint: disable=protected-access
            config._defaults = self.default  # pylint: disable=protected-access
            with open_and_atomic_rename_on_close(self.conf_filename, "w") as fp:
                config.write(fp)

    def register(self, item):
        # Clear the defaults as we'll need to rebuild it (since we're adding another..)
        self.__default = None
        for i in self.__items:
            if i.key == item.key:
                raise RuntimeError("Item {} already exists!".format(item.key))
        self.__items.append(item)

    def update(self, key, value, ignore_is_shutdown=False):
        if self.__debug:
            print("{}: Updating {} to {}".format(self.__class__.__name__, key, value))
        for item in self.__items:
            item.update(key, value, ignore_is_shutdown)

    @property
    def default(self):
        if not self.__default:
            self.__default = OrderedDict()
            for item in self.__items:
                if item.match(item.key) and item.default is not None:
                    self.__default[item.key] = item.default
        return self.__default

    def iter_config(self, section="user"):
        config = six.moves.configparser.RawConfigParser(allow_no_value=True)
        config.read(self.conf_filename)
        if not config.has_section(section) and section != "DEFAULT":
            return
        if section == "DEFAULT":
            defaults = config.defaults()
            k_v_list = [(k, defaults[k]) for k in defaults]
        else:
            defaults = config.defaults()
            section_list = config.items(section)
            k_v_list = [(k, v) for k, v in section_list if v != defaults.get(k, None)]

        for k, v in k_v_list:
            yield k, v

    def update_user_config(self, ignore_is_shutdown=False):
        c = dict(self.iter_config("user"))
        self.__update_config(c, "User", ignore_is_shutdown)

    def update_default_config(self, ignore_is_shutdown=False):
        c = dict(self.iter_config("DEFAULT"))
        self.__update_config(c, "Default", ignore_is_shutdown)

    def update_all_config(self, ignore_is_shutdown=False):
        c = dict(self.iter_config("DEFAULT"))
        c.update(dict(self.iter_config("user")))
        self.__update_config(c, "Default and User", ignore_is_shutdown)

    def __update_config(self, conf, name, ignore_is_shutdown=False):
        config_raised_exceptions = False
        for k in conf:
            start_time = time.time()
            try:
                self.update(k, conf[k], ignore_is_shutdown)
            except Exception as e:  # pylint: disable=broad-except
                msg = "{}: {}".format(e.__class__.__name__, e.message)
                logger.error(msg)
                print("%", msg)
                config_raised_exceptions = True
            if self.__debug:
                logger.info("Updated {} to {}, took {}s".format(k, conf[k], time.time() - start_time))
        if config_raised_exceptions:
            raise RuntimeError("{} config caused errors when applied to the FPGA".format(name))

    @property
    def app(self):
        if self.__app is None:
            import metamako  # pylint: disable=import-outside-toplevel

            self.__app = metamako.get_app(appname)
        return self.__app


appconfig = ApplicationConfig(appname)


def get_generic_cli_function(key, ftype="", _format_dict=None, hidden=False):
    if not _format_dict:
        _format_dict = {}

    format_dict = {
        "synopsis_key": key,
        "usage_key": key,
        "description": ftype + " " + _format_dict.get("description", ""),
        "allowed_values": ["STRING"],
        "appname": appname,
    }
    format_dict.update(_format_dict)
    format_dict["set_allowed_args"] = "|".join(format_dict["allowed_values"])

    @format_docstring(**format_dict)
    def generic_set_function(ctx, value=""):
        """{synopsis_key} - {description}
        Usage: {usage_key} {set_allowed_args}
        Group: Application {appname}
        Mode: config-app-{appname}
        """
        if format_dict["set_allowed_args"] not in [
            "STRING",
            "NUMBER",
            "NEGNUMBER",
            "FLOAT",
        ]:
            if value not in format_dict["allowed_values"]:
                raise ValueError(
                    'Invalid argument "{}", valid arguments are: {}'.format(value, format_dict["set_allowed_args"])
                )
        app = ctx.mode_ctx["app"]
        app.set_config(key, value)

    @format_docstring(**format_dict)
    def generic_show_function(ctx):
        """show {synopsis_key} - {description}
        Usage: show {usage_key}
        Group: Application {appname}
        Mode: config-app-{appname}
        """
        app = ctx.mode_ctx["app"]
        value = app.get_config(key)
        value = False if value is None else value
        return "{}: {}".format(key, value)

    @format_docstring(**format_dict)
    def generic_no_function(ctx):
        """no {synopsis_key} - {description}
        Usage: no {usage_key}
        Group: Application {appname}
        Mode: config-app-{appname}
        """
        app = ctx.mode_ctx["app"]
        app.remove_config(key)

    @format_docstring(**format_dict)
    def generic_default_function(ctx):
        """default {synopsis_key} - {description}
        Usage: default {usage_key}
        Group: Application {appname}
        Mode: config-app-{appname}
        """
        app = ctx.mode_ctx["app"]
        app.remove_config(key)

    # print "Creating generic functions.."

    funcs = {
        "set": generic_set_function,
        "show": generic_show_function,
        "no": generic_no_function,
        "default": generic_default_function,
    }

    func = funcs[ftype]

    # print "Selected {}".format(func.__name__)

    if hidden:
        func.__doc__ += "Hidden: hidden\n"

    return func


class ApplicationConfigItem(object):
    def __init__(  # pylint: disable=too-many-arguments
        self, key_regex, default, func=None, gen_cli=None, gen_hidden=False, debug=False
    ):
        self.__key_regex = key_regex
        self.__default = default
        self.__func = func
        self.__debug = debug
        appconfig.register(self)

        if gen_cli is not None:
            if ("synopsis_key" not in gen_cli or "usage_key" not in gen_cli) and not self.match(self.__key_regex):
                raise Exception("Cant auto generate CLI, key is not self consistant ({})".format(self.__key_regex))
            if debug:
                print("Creating CLI commands for key: {}..".format(self.__key_regex))
            for ftype in ["set", "show", "no", "default"]:
                if debug:
                    print("Creating {} CLI command for key {}".format(ftype, key_regex))
                cli_func = get_generic_cli_function(key_regex, ftype, gen_cli, gen_hidden)
                mosapi.cli_command(cli_func)

    def __update(self, key, value, ignore_is_shutdown):
        if self.__debug:
            print("{}.__update: Updating {} to {}".format(self.__class__.__name__, key, value))
        if self.__func is not None:
            self.__func(appconfig.app, key, value, ignore_is_shutdown)

    def match(self, key):
        m = re.match(self.__key_regex, key)
        if self.__debug:
            print("Checking if {} matches {} : {}".format(key, self.__key_regex, bool(m)))
        if m:
            return True
        return False

    def update(self, key, value, ignore_is_shutdown=False):
        if key is not None and self.match(key):
            if self.__debug:
                print("{}.update: Updating {} to {}".format(self.__class__.__name__, key, value))
            value = self.default if value is None else value
            self.__update(key, value, ignore_is_shutdown)

    @property
    def key(self):
        return self.__key_regex

    @property
    def default(self):
        if callable(self.__default):
            return self.__default()

        return self.__default

    def set_default(self):
        self.update(self.__key_regex, self.default, True)

    def __call__(self, func):
        if self.__debug:
            print("{}.__call__: key: {}, func={}".format(self.__class__.__name__, self.__key_regex, func.__name__))
        if self.__func is not None:
            raise RuntimeError(
                "Call-back function for key {} has alread been registered: {}".format(
                    self.__key_regex, self.__func.__name__
                )
            )
        self.__func = func
        return func
