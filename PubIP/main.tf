resource "azurerm_public_ip" "pubip" {
  name                = "TF001_PubIP"
  resource_group_name = "Terraform-RG"
  location            = "West US"
  allocation_method   = "Dynamic"

}