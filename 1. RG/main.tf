# Create a resource group
resource "azurerm_resource_group" "terraform_rg" {
  name     = "terraform-rg"
  location = "West US"
}