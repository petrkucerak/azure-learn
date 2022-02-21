az login

az account show --output table

az group create --name AzureACIARM --location northeurope

az deployment group create --name AzureACIARM --resource-group AzureACIARM --template-file template.json --parametrs '@template.parameters.json'
