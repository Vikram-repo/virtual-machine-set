
# resource "azurerm_public_ip" "pip-b" {
#     for_each = var.ip-child
#   name                = each.value.name
#   resource_group_name = each.value.resource_group_name
#   location            = each.value.location
#   allocation_method   = "Static"
# }
