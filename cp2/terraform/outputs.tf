# outputs.tf

output "azure_acr_login_server" {
    description = "Login Server for ACR"
    value = azure_container_registry.acr.login_server
    depends_on = [ azure_container_registry.acr ]
}

output "azure_acr_admin_username" {
    description = "Admin User for ACR"
    value = azure_container_registry.acr.admin_username
    depends_on = [ azure_container_registry.acr ]
}

output "azure_acr_admin_password" {
    description = "Admin Password for ACR"
    value     = azure_container_registry.acr.admin_password
    depends_on = [ azure_container_registry.acr ]
    sensitive = true
}