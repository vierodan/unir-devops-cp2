# variables.tf


# --- AZURE REGION ---
variable "azure_location_name_value" {
  description = "The Azure region where resources will be deployed for CP2"
  type        = string
  default     = "West Europe"
}


# --- RESOURCE GROUPS ---
variable "azure_resource_group_name_value" {
  description = "Name of the Azure Resource Group for CP2"
  type        = string
  default     = "avrCP2rg"
}

# --- AZURE CONTAINER REGISTRY ---
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


# --- VIRTUAL MACHINES ---
variable "azure_virtual_network_name_value" {
  description = "Name of the Azure Virtual Network for Virtual Machine 'avrCP'avm'"
  type        = string
  default     = "avrCP2avn"
}

variable "azure_subnet_name_value" {
  description = "Name of the Subnet for Virtual Machine 'avrCP'avm'"
  type        = string
  default     = "avrCP2as"
}

variable "azure_virtual_network_address_space_list_values" {
  description = "Address Space of the Azure Virtual Network for Virtual Machine 'avrCP2avm'"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "azure_subnet_address_prefix_list_values" {
  description = "Subnet Prefixes of the Azure Virtual Network for Virtual Machine 'avrCP2avm'"
  type        = list(string)
  default     = ["10.0.2.0/24"]
}

variable "azure_network_interface_name_value" {
  description = "Network Interface of the Azure Subnet for Virtual Machine 'avrCP2avm'"
  type        = string
  default     = "avrCP2ani"
}