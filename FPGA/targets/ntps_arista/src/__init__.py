#-------------------------------------------------------------------------------
#- Copyright (c) 2022 Netnod AB
#- Copyright (c) 2021 Arista Networks, Inc. All rights reserved.
#-------------------------------------------------------------------------------
#- Author:
#-   wingel@netnod.se
#-   fdk-support@arista.com
#-
#- Description:
#-
#-
#-   Licensed under BSD 3-clause license:
#-     https://opensource.org/licenses/BSD-3-Clause
#-
#- Tags:
#-   license-bsd-3-clause
#-
#-------------------------------------------------------------------------------

# the build system fills this in.
from __future__ import absolute_import
__version__ = 'UNVERSIONED'
__buildid__ = 0

app_name = 'ntps'

import mosapi

# If we are not running on EOS, import the CLI example.
if not mosapi.IS_EOS:
    from .example import *
