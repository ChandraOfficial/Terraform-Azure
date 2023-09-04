resource "azurerm_virtual_network" "vnet" {
  name                = "INDVM001_VNet"
  location             = "West US"
  resource_group_name  = "India-VM"
  address_space       = ["10.200.0.0/16"]
}

resource "azurerm_subnet" "subnet" {
  name                 = "INDVM001-Subnet"
  resource_group_name = "India-VM"
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.200.1.0/24"]
}

resource "azurerm_network_interface" "nic" {
  name                = "INDVM001_NIC"
  location            = "West US"
  resource_group_name = "India-VM"

  ip_configuration {
    name                          = "INDVM001-IPConfig"
    subnet_id                     = azurerm_subnet.subnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.pubip.id
  }
}

resource "azurerm_public_ip" "pubip" {
  name                = "INDVM001_PubIP"
  resource_group_name = "India-VM"
  location            = "West US"
  allocation_method   = "Dynamic"
}