# resource_group/resource_group.tf

resource "azurerm_resource_group" "avrcp2azrg" {
  name     = "avrcp2azrg"
  location = "West Europe"

  tags = {
    environment = "development"
    project     = "avr-unir-devops-cp2"
  }
}
