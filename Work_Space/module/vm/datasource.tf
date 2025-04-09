# data "azurerm_subnet" "fontenddatablock" {
#   name                 = "frontend"
#   virtual_network_name = "newvnet"
#   resource_group_name  = "newrg"
# }

data "azurerm_key_vault" "secretkey" {
  name                = "keyvaul2024"
  resource_group_name = "newrg"
}

data "azurerm_key_vault_secret" "username" {
  name         = "vmusername"
  key_vault_id = data.azurerm_key_vault.secretkey.id
}

data "azurerm_key_vault_secret" "password" {
  name         = "vmpassword"
  key_vault_id = data.azurerm_key_vault.secretkey.id
}