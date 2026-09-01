terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.8.0"
    }
  }

  required_version = ">= 1.9.0"
}

provider "azurerm" {
  features {}
}




resource "azurerm_resource_group" "main" {
  name     = "example-resources"
  location = "west us"
}

resource "azurerm_storage_account" "example" {
  name                     = "stdemopavan001"
  resource_group_name      = azurerm_resource_group.main.name
  location                 = azurerm_resource_group.main.location # implicit dependency
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
  }
}