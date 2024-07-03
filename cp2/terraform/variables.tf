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
  default     = "avrcp2arg"
}

// --- AZURE CONTAINER REGISTRY ---
variable "azurerm_container_registry_name_value" {
  description = "Name of the Azure Container Registry (ACR) for CP2"
  type        = string
  default     = "avrcp2acr"
}

variable "azurerm_sku_basic_name_value" {
  description = "Basic SKU for ACR 'avrCP2acr'"
  type        = string
  default     = "Basic"
}

// --- AZURE NETWORK ---
variable "azurerm_availability_set_name_value" {
  description = "The name of the availability set for Virtuals Machines of CP2"
  type        = string
  default = "avrcp2aas"
}

variable "azurerm_virtual_network_name_value" {
  description = "Name of Azure Virtual Network for CP2"
  type = string
  default = "avrcp2avn"
}

variable "azurerm_subnet_name_value" {
  description = "Name of Azure Subnet for CP2"
  type = string
  default = "avrcp2asn"
}

variable "azurerm_public_ip_name_value" {
  description = "Name of Azure IP public for CP2"
  type = string
  default = "avrcp2apip"
}

variable "azurerm_network_interface_name_value" {
  description = "Name of Azure Network Interface for CP2"
  type = string
  default = "avrcp2ani"
}

variable "azurerm_network_security_group_name_value" {
  description = "Name of Azure Network Security Group for CP2"
  type = string
  default = "avrcp2ansg"
}

// --- AZURE VM ---
variable "azurerm_virtual_machine_linux_name_value" {
  description = "Name of Virtual Machine with Ubuntu Linux 22 for CP2"
  type = string
  default = "avrcp2vml"
}

// --- AZURE KUBERNETES CLUSTER ---
variable "azurerm_aks_cluster_name_value" {
  description = "The name of the AKS cluster."
  type        = string
  default     = "avrcp2aks"
}

variable "azurerm_aks_version_value" {
  description = "The Kubernetes version to use for the AKS cluster."
  type        = string
  default     = "1.28.9"
}

variable "azurerm_aks_nodes_count_value" {
  description = "The number of nodes in the default node pool."
  type        = number
  default     = 1
}

variable "azurerm_aks_node_vm_size_value" {
  description = "The size of the Virtual Machine for the default node pool."
  type        = string
  default     = "Standard_B2s"
}