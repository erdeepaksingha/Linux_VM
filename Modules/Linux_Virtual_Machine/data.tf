data "azurerm_subnet" "subnets" {
  for_each = var.vms

  name                 = each.value.subnet_name
  resource_group_name  = each.value.resource_group_name
  virtual_network_name = each.value.virtual_network_name
}

data "azurerm_public_ip" "public_ip" {
  for_each = var.vms

  name                = each.value.pip_name
  resource_group_name = each.value.resource_group_name
}

data "azurerm_key_vault" "kv" {
  name                = "singhad1"
  resource_group_name = "frontend_rg"
}

data "azurerm_key_vault_secret" "password" {
  name         = "vmspassword"
  key_vault_id = data.azurerm_key_vault.kv.id
}