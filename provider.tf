terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.70.0"
    }
  }
}

provider "azurerm" {
subscription_id   = "7abc588c-6c72-4b33-b6a5-38bdd0a88fb8"
client_id         = "81f9ffb1-147a-441b-ae8a-32a6b9e2929a"
client_secret     = "_xI8Q~yoDxX3tpUoe_gbNdePV4sEOS4N.xGvgcoj"
tenant_id         = "8a224b35-de8f-4cde-a054-f63011bbd52f"
  features {}
}
