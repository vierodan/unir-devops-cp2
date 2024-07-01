# network.tf

resource "azurerm_virtual_network" "avn" {
    name                = var.azurerm_virtual_network_name_value
    address_space       = ["10.0.0.0/16"]
    location            = var.azurerm_location_name_value
    resource_group_name = var.azurerm_resource_group_name_value
    depends_on = [ 
        azurerm_resource_group.arg 
    ]

    tags = {
        environment = "development"
        project     = "cp2"
    }
}

resource "azurerm_subnet" "asn" {
    name                 = var.azurerm_subnet_name_value
    resource_group_name  = var.azurerm_resource_group_name_value
    virtual_network_name = var.azurerm_virtual_network_name_value
    address_prefixes     = ["10.0.1.0/24"]
    depends_on = [ 
        azurerm_resource_group.arg,
        azurerm_virtual_network.avn 
    ]
}

resource "azurerm_public_ip" "apip" {
    name                = var.azurerm_public_ip_name_value
    location            = var.azurerm_location_name_value
    resource_group_name = var.azurerm_resource_group_name_value
    allocation_method   = "Dynamic"
    depends_on = [ 
        azurerm_resource_group.arg 
    ]

    tags = {
        environment = "development"
        project     = "cp2"
    }
}

resource "azurerm_network_interface" "ani" {
    name                = var.azurerm_network_interface_name_value
    location            = var.azurerm_location_name_value
    resource_group_name = var.azurerm_resource_group_name_value
    depends_on = [ 
        azurerm_resource_group.arg,
        azurerm_subnet.asn, 
        azurerm_public_ip.apip 
    ]

    ip_configuration {
        name                          = "internal"
        subnet_id                     = azurerm_subnet.asn.id
        private_ip_address_allocation = "Dynamic"
        public_ip_address_id          = azurerm_public_ip.apip.id
    }

    tags = {
        environment = "development"
        project     = "cp2"
    }
}

resource "azurerm_network_security_group" "ansg" {
    name                = var.azurerm_network_security_group_name_value
    location            = var.azurerm_location_name_value
    resource_group_name = var.azurerm_resource_group_name_value
    depends_on = [ 
        azurerm_resource_group.arg 
    ]

    tags = {
        environment = "development"
        project     = "cp2"
    }

    security_rule {
        name                       = "SSH"
        priority                   = 1001
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "22"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
    }
}

resource "azurerm_network_interface_security_group_association" "anisga" {
    network_interface_id      = azurerm_network_interface.ani.id
    network_security_group_id = azurerm_network_security_group.ansg.id
    depends_on = [ 
        azurerm_resource_group.arg,
        azurerm_network_interface.ani, 
        azurerm_network_security_group.ansg 
    ]
}

