#as.tf

/* resource "azurerm_availability_set" "aas" {
    name                = var.azurerm_availability_set_name_value
    location            = var.azurerm_location_name_value
    resource_group_name = var.azurerm_resource_group_name_value
    depends_on = [ 
        azurerm_resource_group.arg 
    ]

    platform_fault_domain_count  = 2
    platform_update_domain_count = 2
    managed                      = true

    tags = {
        environment = "development"
        project     = "cp2"
    }
} */