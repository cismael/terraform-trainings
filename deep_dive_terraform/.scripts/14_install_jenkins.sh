#!/bin/bash

##################################################################################
# INSTALL JENKINS
##################################################################################

docker run -p 8080:8080 -p 50000:50000 -d -v jenkins_home:/var/jenkins_home --name jenkins jenkins/jenkins:lts


##################################################################################
# CONFIGURE JENKINS
##################################################################################

# Copy the admin password
# docker logs jenkins
# http://127.0.0.1:8080

# Install suggested plugins
# Create a user
# Manage jenkins
# Manage plugins
# Search for Terraform in Available and install without restart
# Back to Manage jenkins
# Global Tool Configuration
# Add Terraform
# Name: terraform 
# Install automatically
# Version - latest for linux (amd64)
# Click Save

# Go to credentials -> global
# Create a credential of type secret text with ID networking_consul_token and the consul token as the secret
# Create a credential of type secret text with ID applications_consul_token and the consul token as the secret
# Create a credential of type secret text with ID aws_access_key and the access key as the secret
# Create a credential of type secret text with ID aws_secret_access_key and the access secret as the secret

# Create a new item
# Name: net-deploy
# Type pipeline
# Select poll SCM
# Definition: Pipeline script from SCM
# SCM: Git
# Repo URL: YOUR_REPO_URL or https://github.com/ned1313/Deep-Dive-Terraform.git
# Script path: m8/networking/Jenkinsfile
# Uncheck lightweight checkout

#Run the PowerShell script to get the plugin files
.\getTerraformPlugin.ps1

#Now we can run a build of the network pipeline
# First build might fail, but now the parameters will be Available

# Run a new build WITH parameters

# When build is successful create a new pipeline for the application stack

# Create a new item
# Name: app-deploy
# Type pipeline
# Select poll SCM
# Definition: Pipeline script from SCM
# SCM: Git
# Repo URL: YOUR_REPO_URL or https://github.com/ned1313/Deep-Dive-Terraform.git
# Script path: m8/applications/Jenkinsfile
# Uncheck lightweight checkout

# First build might fail, but now the parameters will be Available


# Then run the build again