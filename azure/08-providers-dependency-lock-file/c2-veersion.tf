# create resource group
resource "azurerm_resource_group" "myrg1" {
  name = "myrg1"
  location = "central india"
}

# create resource group2

resource "random_string" "myrandom" {
length = 16
special = false
upper  = false
  
}

# resource storage creation

resource "azurerm_storage_account" "mysa" {
  name = "mysa${random_string.myrandom.id}"
  resource_group_name = azurerm_resource_group.myrg1.name
  location = azurerm_resource_group.myrg1.location
  account_tier = "standard"
  account_replication_type = "GRS"
  

  tags = {
    "env" = "stagging"
  }
}