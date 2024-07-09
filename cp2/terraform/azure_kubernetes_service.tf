
resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.azurerm_aks_cluster_name_value
  location            = var.azurerm_aks_location_name_value
  resource_group_name = var.azurerm_resource_group_name_value
  kubernetes_version  = var.azurerm_aks_version_value
  role_based_access_control_enabled = true
  dns_prefix          = "avrcp2aks"
  depends_on = [ 
    azurerm_resource_group.arg 
  ]

  default_node_pool {
    name       = "default"
    node_count = var.azurerm_aks_nodes_count_value
    vm_size    = var.azurerm_aks_node_vm_size_value
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    network_plugin = "azure"
    load_balancer_sku = "basic"
  }

  tags = {
      environment = "development"
      project     = "cp2"
  }
}