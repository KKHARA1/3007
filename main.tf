terraform {
backend "azurerm" {
    resource_group_name  = "backendrg"          # Can be passed via `-backend-config=`"resource_group_name=<resource group name>"` in the `init` command.
    storage_account_name = "kkbackstg"                              # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "kkcont"                               # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "pipeline.tfstate"                # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
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
  name     = "newkkrg22"
  location = "West Europe"
}

resource "azurerm_resource_group" "ngw" {
  name     = "newkkrg33"
  location = "West Europe"
}
