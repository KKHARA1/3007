terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.27.0"
    }
  }
}
provider "azurerm" {
  features {}
  subscription_id = "661ea49e-05d4-429e-8204-de0d46c539b5"

}

resource "azurerm_resource_group" "ngn" {
  name     = "newkkrg"
  location = "West Europe"
}

resource "azurerm_resource_group" "ngw" {
  name     = "newkkrg1"
  location = "West Europe"
}