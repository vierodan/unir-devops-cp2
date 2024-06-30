# virtual_machine.tf
  
resource "azure_linux_virtual_machine" "alvm" {
    name                = "example-vm"
    resource_group_name = var.azure_resource_group_name_value
    location            = var.azure_location_name_value
    size                = "Standard_B1s"
    admin_username      = "adminuser"

    network_interface_ids = [
        azurerm_network_interface.example.id,
    ]

    admin_ssh_key {
        username   = "adminuser"
        public_key = file("~/.ssh/id_rsa.pub")
    }

    os_disk {
        caching              = "ReadWrite"
        storage_account_type = "Standard_LRS"
    }

    source_image_reference {
        publisher = "Canonical"
        offer     = "0001-com-ubuntu-server-jammy"
        sku       = "22_04-lts"
        version   = "latest"
    }

    computer_name  = "cp2host"
    disable_password_authentication = true

    tags = {
        environment = "development"
        project     = "cp2"
    }
}