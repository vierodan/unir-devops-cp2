# resource_group.tf

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.azure_location

  tags = {
    environment = "development"
    project     = "cp2"
  }
}
