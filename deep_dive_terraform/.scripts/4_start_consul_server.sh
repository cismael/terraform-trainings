#!/bin/bash

##################################################################################
# LAUNCH CONSUL SERVER INSTANCE
##################################################################################

consul agent -bootstrap -config-file="consul/config/consul-config.hcl" -bind="127.0.0.1"
