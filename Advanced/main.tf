# Terraform Settings Block
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.0" # Optional but recommended in production
    }
     random = {
      source = "hashicorp/random"
      version = ">= 3.0"
    }    
  }

  # Terraform State Storage to Azure Storage Container (Values will be taken from Azure DevOps)
  backend "azurerm" {
    
  }   
}
}
# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}


