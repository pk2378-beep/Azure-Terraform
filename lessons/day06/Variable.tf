variable "environment" {
  description = "The environment for the resources"
  type        = string
  default     = "development"
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