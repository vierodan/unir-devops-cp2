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
  default     = "avrCP2rg"
}

// --- AZURE CONTAINER REGISTRY ---
variable "azurerm_container_registry_name_value" {
  description = "Name of the Azure Container Registry (ACR) for CP2"
  type        = string
  default     = "avrCP2acr"
}

variable "azurerm_sku_basic_name_value" {
  description = "Basic SKU for ACR 'avrCP2acr'"
  type        = string
  default     = "Basic"
}
