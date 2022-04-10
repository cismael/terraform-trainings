#!/bin/bash

##################################################################################
# WRITE THE CONFIGURATION DATA FOR ADDITIONAL WORKSPACE CONFIG
##################################################################################

cd consul
consul kv put applications/configuration/globo-primary/development/app_info @dev-app.json
consul kv put applications/configuration/globo-primary/qa/app_info @qa-app.json
consul kv put applications/configuration/globo-primary/production/app_info @prod-app.json
consul kv put applications/configuration/globo-primary/common_tags @app-tags.json
