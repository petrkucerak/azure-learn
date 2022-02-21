# prihlaseni do azure
az login

# vypsani subscritions
az account show --output table

# nastaveni defaultni subscription
az account set --subscription "My Demos"

# tvorba RG
az group create --name AzureACICLI --location northeurope

# tvroba a deploy service
az container create \
   --resource-group AzureACICLI \
   --name clicontainer \
   --image mcr.microsoft.com/azuredocs/aci-helloworld \
   --dns-name-label acidemo \
   --ports 80
