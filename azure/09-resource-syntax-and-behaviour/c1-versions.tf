# terraform setting
terraform {
  required_version = "~= 1.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~> 2.66"
    }
  }
}

# provider block

provider "azurerm" {
  features {

  }
}