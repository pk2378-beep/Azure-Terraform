variable "environment" {
  description = "The environment for the resources"
  type        = string
  default     = "dev"
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "rg-1"
}

variable "location" {
  description = "The location of the resources"
  type        = string
  default     = "south india"
}

variable "networks" {
  description = "Virtual network and subnet settings"
  type = map(object({
    virtual_network_name = string
    subnet_name          = string
    address_space        = list(string)
    address_prefixes     = list(string)
  }))

  default = {
    vnet1 = {
      virtual_network_name = "vnet-1"
      subnet_name          = "subnet-1"
      address_space        = ["10.0.0.0/16"]
      address_prefixes     = ["10.0.1.0/24"]
    }
    vnet2 = {
      virtual_network_name = "vnet-2"
      subnet_name          = "subnet-2"
      address_space        = ["10.1.0.0/16"]
      address_prefixes     = ["10.1.1.0/24"]
    }
  }
}