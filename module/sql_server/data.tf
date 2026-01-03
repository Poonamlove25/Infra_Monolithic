data "azurerm_key_vault" "kvi" {
  name                = "poonamkey"
  resource_group_name = "poonam-rg"
}
data "azurerm_key_vault_secret" "sql-pass" {
  name         = "sql-pass1"
  key_vault_id = data.azurerm_key_vault.kvi.id
}
data "azurerm_key_vault_secret" "sql-user" {
  name         = "sql-user"
  key_vault_id = data.azurerm_key_vault.kvi.id
}