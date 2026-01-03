terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.56.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {}
  subscription_id = "3d1ce785-6c4d-4565-bb5e-3b46939260a6"
}
terraform {
  backend "azurerm" {
    resource_group_name  = "poonam-rg"
    storage_account_name = "stgpoonam9"
    container_name       = "container"
    key                  = "terraform.tfstate"

  }
 }