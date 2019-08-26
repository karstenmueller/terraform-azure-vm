#/bin/bash

set -eo pipefail

# interactice login (requires a vaild azure subscription $azure_subscription_id)
az login -u $azure_admin_name -p $azure_admin_secret
az ad sp create-for-rbac --name $azure_app_name

az logout
