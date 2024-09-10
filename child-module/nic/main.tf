resource "azurerm_network_interface" "nic-b" {
    for_each = var.nic-child
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  ip_configuration {
    name                          = "internal"
    subnet_id                     = "/subscriptions/8efc0510-5574-4749-93e2-d3aba44fbb73/resourceGroups/rg00/providers/Microsoft.Network/virtualNetworks/testvnet/subnets/testsubnet1"
    private_ip_address_allocation = "Dynamic"
  }
}