#create a resource group for central region

resource "azurerm_resource_group" "myrg1" {
 name = "myrg-1"
 location = "Central india"
}

# create a resource group for south india

resource "azurerm_resource_group" "myrg2" {
  name = "myrg-2"
  location = "south india"
  provider = azurerm.provider2-southindia

}