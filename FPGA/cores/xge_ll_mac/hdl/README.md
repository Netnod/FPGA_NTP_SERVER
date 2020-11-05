10Gigabit Ethernet MAC
======================

This is an IP core that can be found here:

 https://opencores.org/projects/xge_ll_mac

To retrieve the original core, create an account on opecores.org, and
then download the file "xge_ll_mac_latest.tar.gz" from:

 https://opencores.org/download/xge_ll_mac

Then extract and patch the core with the following commands:

 tar xvfz xge_ll_mac_latest.tar.gz
 mv xge_ll_mac/trunk/rtl/* .
 rm -rf xge_ll_mac

 patch -p1 <patch_file

Information about the core
==========================

Name: xge_ll_mac
Created: Nov 15, 2012
Updated: Feb 1, 2016
SVN Updated: Dec 1, 2012
License: LGPL

This is a fork of the xge_mac and was released by the Computer
Architecture Group (http://cag.uni-hd.de) of the University of
Heidelberg.
