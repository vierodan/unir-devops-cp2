# vm.tf

resource "azurerm_linux_virtual_machine" "avml" {
    name                = var.azurerm_virtual_machine_linux_name_value
    location            = var.azurerm_location_name_value
    resource_group_name = var.azurerm_resource_group_name_value
    network_interface_ids = [
        azurerm_network_interface.ani.id,
    ]
    depends_on = [ 
        azurerm_resource_group.arg,
        azurerm_availability_set.aas, 
        azurerm_network_interface.ani 
    ]

    size                = "Standard_B1s"
    admin_username      = "adminuser"
    admin_password      = "P@ssw0rd1234!"
    disable_password_authentication = false

    availability_set_id = azurerm_availability_set.aas.id

    os_disk {
        name              = "linux-os-disk"
        caching           = "ReadWrite"
        storage_account_type = "Standard_LRS"
    }

    source_image_reference {
        publisher = "Canonical"
        offer     = "0001-com-ubuntu-server-jammy"
        sku       = "22_04-lts-gen2"
        version   = "latest"
    }

    computer_name = "ubuntu22linuxvm"

    tags = {
        environment = "development"
        project     = "cp2"
    }
}
