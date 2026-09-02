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
    features {}
    subscription_id = "ae64e688-e040-41f7-901f-1dcafa72597e"
  
}