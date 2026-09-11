output "resource_group_name" {
  value = azurerm_resource_group.example.name
}

output "virtual_machine_name" {
  value = azurerm_virtual_machine.main.name
}

output "network_interface_name" {
  value = azurerm_network_interface.main.name
}