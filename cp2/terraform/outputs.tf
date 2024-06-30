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

output "azure_alvm_admin_username" {
    description = "Admin User Name for Linux Virtual machine"
    value = azure_linux_virtual_machine.alvm.admin_username
    depends_on = [ azure_linux_virtual_machine.alvm ]
}

output "azure_alvm_virtual_machine_id" {
    description = "Machine ID for Linix Virtual machine"
    value = azure_linux_virtual_machine.alvm.id
    depends_on = [ azure_linux_virtual_machine.alvm ]
}

output "azure_alvm_public_ip_address" {
    description = "Public IP Address for Linux Virtual machine"
    value = azure_linux_virtual_machine.alvm.public_ip_address
    depends_on = [ azure_linux_virtual_machine.alvm ]
}