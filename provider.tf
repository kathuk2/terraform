terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.76.0"
    }
  }

   backend "azurerm" {
    resource_group_name   = "tstate"
    # Paste the storage name generate after creating the blob storgae
    storage_account_name  = "tstate7170"
    container_name        = "tstate"
    key                   = "terraform.tfstate"
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
    features {}
}