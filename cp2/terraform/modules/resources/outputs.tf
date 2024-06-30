# outputs.tf

output "acr_login_server" {
    description = "value"
    value = azurerm_container_registry.acr.login_server
    depends_on = [ azurerm_container_registry.acr ]
}

output "acr_admin_username" {
    description = "value"
    value = azurerm_container_registry.acr.admin_username
    depends_on = [ azurerm_container_registry.acr ]
}

output "acr_admin_password" {
    description = "value"
    value     = azurerm_container_registry.acr.admin_password
    depends_on = [ azurerm_container_registry.acr ]
    sensitive = true
}