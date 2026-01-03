data "azurerm_network_interface" "nic" {
  for_each = var.vm
  name = each.value.network_interface_name
  resource_group_name = each.value.resource_group_name
}

data "azurerm_key_vault" "kvi" {
  name                = "poonamkey"
  resource_group_name = "poonam-rg"
}

data "azurerm_key_vault_secret" "vm-pass" {
  name         = "vm-pass1"
  key_vault_id = data.azurerm_key_vault.kvi.id
}
data "azurerm_key_vault_secret" "vm-user" {
  name         = "vm-user"
  key_vault_id = data.azurerm_key_vault.kvi.id
}
