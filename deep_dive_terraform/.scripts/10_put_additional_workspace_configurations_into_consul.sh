#!/bin/bash

##################################################################################
# WRITE THE CONFIGURATION DATA FOR ADDITIONAL WORKSPACE CONFIG
##################################################################################

cd consul
consul kv put networking/configuration/globo-primary/development/net_info @dev-net.json
consul kv put networking/configuration/globo-primary/qa/net_info @qa-net.json
consul kv put networking/configuration/globo-primary/production/net_info @prod-net.json
