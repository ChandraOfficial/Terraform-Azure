resource "azurerm_managed_disk" "datadisk" {
  name                 = "TF001_DataDisk1"
  location             = "West US"
  resource_group_name  = "Terraform-RG"
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = "10"
}