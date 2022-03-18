#Buisness unit variable
variable "business" {
  description = "Name of the Busines"
  type = string
  default = "ccoe"
}

#Environment variable
variable "environment" {
  description = "Ennvironment"
  type = string
  default = "sandbox"
}

#Azure Resource Group Name
variable "resource_group_name" {
  description = "name of the rg"
  type = string
  default = "rg-default"
}

# Azure Resources Location
variable "resource_group_location" {
  description = "Region in which Azure Resources to be created"
  type = string
  default = "eastus2"  
}

locals {
  common_tags = {
      owner=var.business
       }
}
