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

output "resource_group_name" {
    description = "The name of the resource group"
    value       = azurerm_resource_group.arg.name
}

/* output "virtual_machine_public_ip" {
    description = "The public IP address of the virtual machine"
    value       = azurerm_public_ip.apip.ip_address
}

output "admin_username" {
    description = "The admin username for the virtual machine"
    value       = azurerm_linux_virtual_machine.avml.admin_username
} */

output "kube_config" {
  value     = azurerm_kubernetes_cluster.aks.kube_config_raw
  sensitive = true
}