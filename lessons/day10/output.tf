output "azurerm_virtual_machine" {
  value = azurerm_virtual_machine.main.name
}

output "resource_group_name" {
  value = azurerm_resource_group.example.name
}

output "azurerm_virtual_network" {
  value = azurerm_virtual_network.main.name
}

output "azurerm_subnet" {
  value = azurerm_subnet.internal.name
}

output "azurerm_network_interface" {
  value = azurerm_network_interface.main.name
}

output "location" {
  value = azurerm_resource_group.example.location
}

