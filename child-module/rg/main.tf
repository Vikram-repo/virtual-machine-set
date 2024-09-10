resource "azurerm_resource_group" "rg-b" {
    for_each = var.rg-child
    name = each.value.name
    location = each.value.location
}