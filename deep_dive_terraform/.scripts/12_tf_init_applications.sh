#!/bin/bash

##################################################################################
# WRITE THE CONFIGURATION DATA FOR ADDITIONAL WORKSPACE CONFIG
##################################################################################

cd applications
terraform init -backend-config="path=applications/state/globo-primary"
