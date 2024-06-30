# container_registry.tf

resource "azure_container_registry" "acr" {
  name                = var.azure_container_registry_name_value
  resource_group_name = var.azure_resource_group_name_value
  location            = var.azure_location_name_value
  sku                 = var.azure_sku_basic__name_value # Available SKUs: Basic, Standard, Premium

  admin_enabled = true # Set to false if you do not want admin user enabled

  tags = {
    environment = "development"
    project     = "cp2"
  }
}


