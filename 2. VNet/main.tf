resource "azurerm_virtual_network" "vnet" {
  name                = "TF001_Vnet"
  location            = "West US"
  resource_group_name = "TF-RG"
  address_space       = ["10.10.0.0/16"]
}

resource "azurerm_subnet" "subnet" {
  name                 = "TF001_Subnet"
  resource_group_name  = "TF-RG"
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.10.1.0/24"]
}