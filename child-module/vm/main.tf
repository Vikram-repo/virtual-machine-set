resource "azurerm_linux_virtual_machine" "vm-b" {
    for_each = var.vm-child
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  size                = "Standard_F2"
  admin_username      = each.value.admin_username
  admin_password = each.value.admin_password
  disable_password_authentication = "false"
  network_interface_ids = ["/subscriptions/8efc0510-5574-4749-93e2-d3aba44fbb73/resourceGroups/rg00/providers/Microsoft.Network/networkInterfaces/testnic"]
   

#   admin_ssh_key {
#     username   = "Vikramr"
#     public_key = ("Vikram@02020202")
#   }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}

