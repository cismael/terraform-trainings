#!/bin/bash

##################################################################################
# GENERATE THE CONSUL BOOTSTRAP TOKEN
##################################################################################

# Open a separate terminal window to run this command

consul acl bootstrap

# Uncomment the line below, copy/paste the generated consul secret_id in the terminal windows and execute the command
#export CONSUL_HTTP_TOKEN=SECRETID_VALUE

# Consul UI address : http://127.0.0.1:8500/ui
# To log in, use the token set in "CONSUL_HTTP_TOKEN" var
