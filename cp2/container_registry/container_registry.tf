# container_registry/container_registry.tf

resource "azurerm_container_registry" "avrcp2azacr" {
  name                     = "avrcp2azacr"
  resource_group_name      = azurerm_resource_group.avrcp2azrg.name
  location                 = azurerm_resource_group.avrcp2azrg.location
  sku                      = "Basic"  # Available SKUs: Basic, Standard, Premium

  admin_enabled            = true  # Set to false if you do not want admin user enabled

  tags = {
    environment = "development"
    project     = "avr-unir-devops-cp2"
  }
}

output "acr_login_server" {
  value = azurerm_container_registry.avrcp2azacr.login_server
}

output "acr_admin_username" {
  value = azurerm_container_registry.avrcp2azacr.admin_username
}

output "acr_admin_password" {
  value     = azurerm_container_registry.avrcp2azacr.admin_password
  sensitive = true
}
