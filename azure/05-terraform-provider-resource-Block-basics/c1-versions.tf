# terraform setting
terraform {
  required_version = " ~> 1.2.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~> 2.64" # production grade
     }
  }
}

# provider setting


provider "azurerm" {
  features {

  }
}