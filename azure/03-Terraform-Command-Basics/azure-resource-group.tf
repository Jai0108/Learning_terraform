# Terraform setting Block

terraform {
  required_version = " >=1.0.0"
  required_providers{
    azurerm = {
        source = "hashicorp/azurerm"
        versionversion = ">= 2.0"
    }
  }
}

# Configure the microsoft Azure provider

provider "azurerm" {
  feature{}
}

# create resource Group

resource "azure_resource_group" "my_demo_rg1" {
  location = "southeastasia"
  name = "my-demo-rg1"
}