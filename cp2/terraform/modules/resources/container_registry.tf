# container_registry.tf

resource "azurerm_container_registry" "acr" {
  name                = var.azure_container_registry_name
  resource_group_name = var.resource_group_name
  location            = var.azure_location
  sku                 = var.sku_basic_name # Available SKUs: Basic, Standard, Premium

  admin_enabled = true # Set to false if you do not want admin user enabled

  tags = {
    environment = "development"
    project     = "cp2"
  }
}


