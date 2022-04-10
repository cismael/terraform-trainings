#!/bin/bash

##################################################################################
# INITIALIZE THE BACKEND CONFIG
##################################################################################

# Uncomment the line below, copy/paste the generated consul secret_id in the terminal windows and execute the command
# This was already done in the "5_generate_consul_bootstrap_token.sh" script file
#export CONSUL_HTTP_TOKEN=SECRETID_VALUE

terraform init -backend-config="path=networking/state/globo-primary"

# Consul UI address : http://127.0.0.1:8500/ui
# To log in, use the token set in "CONSUL_HTTP_TOKEN" var

# to delete later
export CONSUL_HTTP_TOKEN=b9b09f1a-17dd-afbf-e703-3e98604ac815