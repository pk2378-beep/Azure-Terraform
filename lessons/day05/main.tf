terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "~> 4.8.0"
    }
  }
  required_version = ">=1.9.0"
}

provider "azurerm" {
    features {
      
    }
  
}

variable "environment" {
  description = "The environment for the resources"
  type        = string
  default     = "development"
}

locals {
  common_tags= { 
  environment="dev"
  lob="banking"
  stage="alpha"
  }
}

variable "location" {
  description = "The location for the resources"
  type        = string
  default     = "West Europe"
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "rg-test"
}

resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "example" {
 
  name                     ="pavan10001234"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location # implicit dependency
  account_tier             = "Standard"
  account_replication_type = "ZRS"

  tags = {
    environment = local.common_tags.environment
  
  }
}

output "storage_account_name" {
  value = azurerm_storage_account.example.name
}

output "resource_group_name" {
  value = azurerm_resource_group.example.name
}