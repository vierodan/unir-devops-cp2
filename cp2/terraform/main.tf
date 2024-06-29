terraform{
  required_providers {
    azurerm ={
      source = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }
  required_version = ">= 1.1.0, < 2.0.0"
}
provider "azurerm" {
  features {}
}

// Module resources to call the network module
module "resources" {
  source = "./modules/resources"

  // Optional: You can pass variables to the module if needed
  // Example:
  // vnet_name   = "exampleVNet"
  // subnet_name = "subnet1"
}