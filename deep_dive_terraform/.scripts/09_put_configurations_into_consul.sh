#!/bin/bash

##################################################################################
# WRITE THE CONFIGURATION DATA FOR "globo-primary" CONFIG
##################################################################################

cd consul && consul kv put networking/configuration/globo-primary/net_info @globo-primary-2.json
 