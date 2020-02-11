# CLoud provider cli commands

## AZURE

gui portal: portal.azure.com
shell portal: shell.azure.com
local ci login:
present RG:
subscription: az account
list RG: az group list
list RG resources:
main command: az
help: help az [cmd]
output: -o (table|)

## AWS

gui portal: 
shell portal: 
local ci login:
present RG/project:  aws configure
subscription: aws config
list RG: az group list
list RG resources:
main command: aws   aws2
help: help az [cmd]
output: -o (table|)

## GCP

gui portal: cloud.google.clom
shell portal: 
local ci login:
present RG: gcloud config list project    also gcloud project list
subscription: gcloud config list account
list RG: az group list
list RG resources:
main command: gcloud gsutil
help: help az [cmd]
cloud.google.com/sdk/gcloud/reference
useful: cloud info
output: -o (table|)

## general

gui portal: 
shell portal: 
local ci login:
present RG:
subscription: 
list RG: 
list RG resources:
main command: 
help: 
output: 
api url's
blob storage
cdn urls
