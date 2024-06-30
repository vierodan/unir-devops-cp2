# network.tf

resource "azure_virtual_network" "avn" {
    name                = var.azure_virtual_network_name_value
    address_space       = var.azure_virtual_network_address_space_list_values
    location            = var.azure_location_name_value
    resource_group_name = var.azure_resource_group_name_value

    tags = {
        environment = "development"
        project     = "cp2"
    }
}

resource "azure_subnet" "as" {
    name                 = var.azure_subnet_name_value
    resource_group_name  = var.azure_resource_group_name_value
    virtual_network_name = var.azure_virtual_network_name_value
    address_prefixes     = var.azure_subnet_address_prefix_list_values

    tags = {
        environment = "development"
        project     = "cp2"
    }
}

resource "azure_network_interface" "ani" {
    name                = var.azure_network_interface_name_value
    location            = var.azure_location_name_value
    resource_group_name = var.azure_resource_group_name_value

    ip_configuration {
        name                          = "internal"
        subnet_id                     = azure_subnet.subnet_id
        private_ip_address_allocation = "Dynamic"
    }

    tags = {
        environment = "development"
        project     = "cp2"
    }
}
