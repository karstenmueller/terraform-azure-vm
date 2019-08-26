# README

## init

- Login to Azure using an admin account
- Create an Azure application ('displayName' is $azure_app_name)

~~~
bash init.sh

Changing "app_name" to a valid URI of "http://app_name", which is the required format used for service principal names
Creating a role assignment under the scope of "/subscriptions/482dbf1b-e569-4fb1-9fc6-b8695abad286"
{
  "appId": "[ ... ]",
  "displayName": "app_name",
  "name": "http://app_name",
  "password": "[ ... ]",
  "tenant": "[ ... ]"
}
~~~

- Write down 'appId', 'password' and 'tenant' (use .envrc for storing variables)
- Rerun the script if you want to change the password

## login

- Login to Azure using your new 'app' (using .envrc variables)

~~~bash
bash login.sh
~~~

## terraform

...

## List of images

~~~bash
$ az vm image list --offer Ubuntu --output table
Offer         Publisher    Sku        Urn                                      UrnAlias    Version
------------  -----------  ---------  ---------------------------------------  ----------  ---------
UbuntuServer  Canonical    18.04-LTS  Canonical:UbuntuServer:18.04-LTS:latest  UbuntuLTS   latest
~~~
