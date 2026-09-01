output "azurerm_virtual_machine" {
  value = azurerm_virtual_machine.main.name
}

output "resource_group_name" {
  value = azurerm_resource_group.example.name
}