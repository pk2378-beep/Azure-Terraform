variable "environment" {
  description = "The environment for the resources"
  type        = string
  default     = "dev"
}

variable "subscription_id" {
  description = "The Azure subscription ID used by the provider"
  type        = string
}

variable "location" {
  description = "The location for the resources"
  type        = string
  default     = "southindia"
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "rg-test"
}

variable "storage_disk_size" {
  description = "The size of the storage disk in GB"
  type        = number
  default     = 30
}

variable "vm_delete_os_disk_on_termination" {
  description = "Whether to delete the OS disk when the VM is deleted"
  type        = bool
  default     = true
}

variable "allowed_locations" {
  description = "The list of allowed locations for the resources"
  type        = list(string)
  default     = ["WestEurope", "southindia", "EastUS", "WestUS"]
}

variable "mapping_tags" {
  description = "A map of tags to assign to the resources"
  type        = map(string)
  default     = {
    environment = "dev"
    owner       = "testuser"
    managed_by  = "terraform"
    deployment  = "test-deployment"
  }
}