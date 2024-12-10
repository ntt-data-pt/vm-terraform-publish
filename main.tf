# Define Existing Resource Values
locals {
    resource_group_name   = "poc-resource-group"
    location              = "West Europe"
    network_interface_id  = "/subscriptions/<SUBSCRIPTION_ID>/resourceGroups/poc-resource-group/providers/Microsoft.Network/networkInterfaces/poc-nic"
}

# Virtual Machine
resource "azurerm_windows_virtual_machine" "example" {
    name                  = var.resource_name
    location              = local.location
    resource_group_name   = local.resource_group_name
    network_interface_ids = [local.network_interface_id]
    size                  = var.vm_size

    os_disk {
        caching              = "ReadWrite"
        storage_account_type = "Standard_LRS"
    }

    source_image_reference {
        publisher = "MicrosoftWindowsServer"
        offer     = "WindowsServer"
        sku       = "2019-Datacenter"
        version   = "latest"
    }

    admin_username = "adminuser"
    admin_password = "P@ssw0rd1234!" # Replace with a secure password
}