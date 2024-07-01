resource "azure_resource_group" "rg" {
  name     = var.azure_resource_group_value
  location = var.azure_location_value

  tags = {
    environment = "development"
    project     = "cp2"
  }
}




