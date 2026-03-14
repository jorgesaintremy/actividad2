
# creacion maquina virtual
resource "azurerm_linux_virtual_machine" "vm" {
  name                            = "Azure-vm"
  resource_group_name             = azurerm_resource_group.rg.name
  location                        = azurerm_resource_group.rg.location
  size                            = "Standard_B2als_v2"
  admin_username                  = "azureuser"
  network_interface_ids           = [azurerm_network_interface.nic.id]
  disable_password_authentication = true
  depends_on = [
    azurerm_resource_group.rg, azurerm_network_interface.nic
  ]

  admin_ssh_key {
    username   = "azureuser"
    public_key = file("~/.ssh/id_rsa.pub")
  }

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
  tags = {
    environment = "casopractico2"
  }
}