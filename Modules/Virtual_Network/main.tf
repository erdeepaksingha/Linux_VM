resource "azurerm_virtual_network" "virtualnetwork" {
#depends_on = [ azurerm_resource_group.rgs ]
    for_each = var.vnets
    name = each.value.name
    location = each.value.location
    resource_group_name = each.value.resource_group_name
    address_space = each.value.address_space
}