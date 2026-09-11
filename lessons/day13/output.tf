output "azurerm_virtual_network" {
  value = azurerm_virtual_network.main.name
}

output "resource_group_name" {
  value = azurerm_resource_group.example.name
}

output "azurerm_subnet" {
  value = azurerm_subnet.internal.name
}