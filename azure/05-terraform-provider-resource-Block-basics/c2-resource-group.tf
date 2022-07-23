# resource group
# create a resource

resource "azurerm_resource_group" "myrg" {
  name = "myrg-1"
  location = "Central India"
}