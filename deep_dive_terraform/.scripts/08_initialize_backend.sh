#!/bin/bash

##################################################################################
# INITIALIZE THE BACKEND CONFIG
##################################################################################

# Uncomment the line below, copy/paste the generated consul secret_id in the terminal windows and execute the command
# This was already done once in the "5_generate_consul_bootstrap_token.sh" script file
#export CONSUL_HTTP_TOKEN=SECRETID_VALUE

cd networking && terraform init -backend-config="path=networking/state/globo-primary"
