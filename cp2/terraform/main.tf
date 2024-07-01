
# main.tf

resource "azurerm_resource_group" "rg" {
  name     = var.azurerm_resource_group_name_value
  location = var.azurerm_location_name_value

  tags = {
    environment = "development"
    project     = "cp2"
  }
}




