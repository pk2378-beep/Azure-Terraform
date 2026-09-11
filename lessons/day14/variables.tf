variable "environment" {
  description = "The environment for the resources"
  type        = string
  default     = "dev"
}

variable "location" {
  description = "The location for the resources"
  type        = string
  default     = "southindia"
}

# variable "virtual_network_name" {
#   description = "The name of the virtual network"
#   type        = string
# }

# variable "subnet_name" {
#   description = "The name of the subnet"
#   type        = string
# }

# variable "vnet_address_space" {
#   description = "The address space for the virtual network"
#   type        = list(string)
# }

# variable "subnet_address_prefixes" {
#   description = "The address prefixes for the subnet"
#   type        = list(string)
# }