resource "azurerm_virtual_network" "vnet" {

    for_each = var.vnet
  name                = each.value.vnet_name
  address_space       = each.value.address_space
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
}

resource "azurerm_subnet" "subnets" {
  depends_on = [ azurerm_virtual_network.vnet ]
    for_each = var.vnet
  name                 = each.value.subnet_name
  resource_group_name  =each.value.resource_group_name
  virtual_network_name = each.value.vnet_name
  address_prefixes     = each.value.address_prefixes
}