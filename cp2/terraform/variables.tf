# variables.tf

// --- AZURE REGION ---
variable "azure_location_name_value" {
  description = "The Azure region where resources will be deployed for CP2"
  type        = string
  default     = "West Europe"
}

// --- RESOURCE GROUPS ---
variable "azure_resource_group_name_value" {
  description = "Name of the Azure Resource Group for CP2"
  type        = string
  default     = "avrCP2rg"
}

// --- AZURE CONTAINER REGISTRY ---
variable "azure_container_registry_name_value" {
  description = "Name of the Azure Container Registry (ACR) for CP2"
  type        = string
  default     = "avrCP2acr"
}

variable "azure_sku_basic_name_value" {
  description = "Basic SKU for ACR 'avrCP2acr'"
  type        = string
  default     = "Basic"
}
