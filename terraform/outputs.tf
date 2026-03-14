output "resource_group_id" {
  value = azurerm_resource_group.rg.id
}

output "azurerm_network_interface_nic_id" {
  value = azurerm_network_interface.nic.id
}

output "public_ip_address" {
  value = azurerm_public_ip.mypublicIp1.ip_address
}

output "public_ip_address_id" {
  value = azurerm_public_ip.mypublicIp1.id
}