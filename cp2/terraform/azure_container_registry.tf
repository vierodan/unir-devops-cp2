# acr.tf

/* resource "azurerm_container_registry" "acr" {
    name                = var.azurerm_container_registry_name_value
    resource_group_name = var.azurerm_resource_group_name_value
    location            = var.azurerm_location_name_value
    sku                 = var.azurerm_sku_basic_name_value # Available SKUs: Basic, Standard, Premium
    depends_on = [ 
        azurerm_resource_group.arg 
    ]

    admin_enabled = true # Set to false if you do not want admin user enabled

    tags = {
        environment = "development"
        project     = "cp2"
    }
} */