#!/bin/bash
yum install r1soft-cdp-enterprise-server
yum install unzip 
mv r1soft-enterpriseedition-linux64-3.18.2.zip cdp 
unzip r1soft-enterpriseedition-linux64-3.18.2.zip
r1soft-setup --user DESIRED_USERNAME --pass DESIRED_PASSWORD 
/etc/init.d/cdp-server restart