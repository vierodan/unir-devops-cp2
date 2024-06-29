// variables.tf

variable "azure_location" {
  description = "The Azure region where resources will be deployed for CP2"
  type        = string
  default     = "West Europe"
}

variable "resource_group_name" {
  description = "Name of the Azure Resource Group for CP2"
  type        = string
  default     = "avrCP2rg"
}

variable "azure_container_registry_name" {
  description = "Name of the Azure Container Registry (ACR) for CP2"
  type        = string
  default     = "avrCP2acr"
}

variable "sku_basic_name" {
  description = "Basic SKU"
  type        = string
  default     = "Basic"
}