terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      #version = ">= 2.0"
      version = "1.44.0"
     }

    random = {
        source = "hashicorp/random"
        version = "~= 3.3"
    } 
  } 
}

provider "azurerm" {
    /*features {
      
    } */
  
}

provider "random" {
  
}