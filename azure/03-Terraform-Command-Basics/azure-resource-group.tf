# Terraform setting Block

terraform {
  required_version = " >=1.2.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.9.0"
    }
  }
}

# Configure the microsoft Azure provider

provider "azurerm" {
  features {

  }

}

resource "azurerm_resource_group" "rg_demo1" {
  name     = "resource_demo"
  location = "Central India"
}