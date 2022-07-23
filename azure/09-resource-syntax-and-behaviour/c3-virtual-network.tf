# Resource-2: create virtual network

resource "azurerm_virtual_network" "mynet" {
    name = "myvnet-1"
    address_space = ["10.0.0.0/16"]
    location = azurerm_resource_group.myrg1.location
    resource_group_name = azurerm_resource_group.myrg1.name

    tags = {
        Name = "myvnet-1"
    }

}


# Resource-3: create subnet
resource "azurerm_subnet" "mysubnet" {
    name = "mysubnet1"
    resource_group_name = azurerm_resource_group.myrg1.name
    virtual_network_name = azurerm_virtual_network.mynet.name
    address_prefixes = [ "10.0.2.0/24" ]
  
}


# Resource-4: create Public IP address
resource "azurerm_public_ip" "mypublicip" {
  name = "mypublicip"
  resource_group_name = azurerm_resource_group.myrg1.name
  location = azurerm_resource_group.myrg1.location
  allocation_method = "dyanamic"

  tags = {
    env = "dev"
  }
}
# resource-5: Create Network interface

resource "azurerm_network_interface" "myvmnic" {
    name = "vmnic"
    location = azurerm_resource_group.myrg1.location
    resource_group_name = azurerm_resource_group.myrg1.name

    ip_configuration {
      name = "internal"
      subnet_id = azurerm_subnet.mysubnet.id
      private_ip_address_allocation = "dynamic"
      public_ip_address_id = azurerm_public_ip.mypublicip.id
    }
  
}