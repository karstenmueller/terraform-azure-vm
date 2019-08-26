#/bin/bash

set -eo pipefail

az login --service-principal -u $ARM_CLIENT_ID -p $ARM_CLIENT_SECRET -t $ARM_TENANT_ID
az account set --subscription $ARM_SUBSCRIPTION_ID
