terraform {
  required_version = "~>1.2.0"
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "~2.64"
    }
  }
}

# multiple provider setting

# Default provider for central india

provider "azurerm" {
  features {
    
  }
}


# critical provider for South india

provider "azurerm" {
  
  features {
    virtual_machine {
      delete_os_disk_on_deletion = false
    }
     
  }
  alias = "provider2-southindia"

}