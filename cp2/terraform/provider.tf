terraform {
  
    required_version = ">= 1.9.0"
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version = ">=3.0.0"
        }
    }
 }

 provider "azurerm" {
    features {}
    skip_provider_registration = true
}

