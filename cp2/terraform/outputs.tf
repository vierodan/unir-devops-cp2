# outputs.tf

output "azurerm_acr_login_server" {
    description = "Login Server for ACR"
    value = azurerm_container_registry.acr.login_server
}

output "azurerm_acr_admin_username" {
    description = "Admin User for ACR"
    value = azurerm_container_registry.acr.admin_username
}

output "azurerm_acr_admin_password" {
    description = "Admin Password for ACR"
    value     = azurerm_container_registry.acr.admin_password
    sensitive = true
}