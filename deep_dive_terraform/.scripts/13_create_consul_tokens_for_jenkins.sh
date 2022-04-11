#!/bin/bash

##################################################################################
# CREATE 2 NEW CONSUL TOKEN FOR JENKINS
##################################################################################

cd consul
consul acl token create -policy-name=networking -description="Jenkins networking"
consul acl token create -policy-name=applications -description="Jenkins applications"
