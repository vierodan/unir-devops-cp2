# variables.tf

// --- AZURE REGION ---
variable "azurerm_location_name_value" {
  description = "The Azure region where resources will be deployed for CP2"
  type        = string
  default     = "West Europe"
}

// --- RESOURCE GROUPS ---
variable "azurerm_resource_group_name_value" {
  description = "Name of the Azure Resource Group for CP2"
  type        = string
  default     = "avr_arg"
}

// --- AZURE CONTAINER REGISTRY ---
variable "azurerm_container_registry_name_value" {
  description = "Name of the Azure Container Registry (ACR) for CP2"
  type        = string
  default     = "avr_acr"
}

variable "azurerm_sku_basic_name_value" {
  description = "Basic SKU for ACR 'avrCP2acr'"
  type        = string
  default     = "Basic"
}

// --- AZURE NETWORK ---
variable "azurerm_virtual_network_name_value" {
  description = "Name of Azure Virtual Network for CP2"
  type = string
  default = "avr_avn"
}

variable "azurerm_subnet_name_value" {
  description = "Name of Azure Subnet for CP2"
  type = string
  default = "avr_asn"
}

variable "azurerm_public_ip_name_value" {
  description = "Name of Azure IP public for CP2"
  type = string
  default = "avr_apip"
}

variable "azurerm_network_interface_name_value" {
  description = "Name of Azure Network Interface for CP2"
  type = string
  default = "avr_ani"
}

variable "azurerm_network_security_group_name_value" {
  description = "Name of Azure Network Security Group for CP2"
  type = string
  default = "avr_ansg"
}
