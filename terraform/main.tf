# Use the network module to create a vnet and subnet
module "network" {
  source              = "Azure/network/azurerm"
  version             = "2.0.0"
  location            = "${var.location}"
  resource_group_name = "${var.azure_resource_group_name}"
  vnet_name           = "${var.vnet_name}"
  address_space       = "10.0.0.0/16"
  subnet_names        = ["mySubnet"]
  subnet_prefixes     = ["10.0.1.0/24"]
}

# Use the compute module to create the VM
module "compute" {
  source              = "Azure/compute/azurerm"
  version             = "1.3.0"
  location            = "${var.location}"
  resource_group_name = "${var.azure_resource_group_name}"
  vnet_subnet_id      = "${element(module.network.vnet_subnets, 0)}"
  admin_username      = "${var.user_name}"
  admin_password      = "Password1234!"
  remote_port         = "22"
  vm_os_publisher     = "Canonical"
  vm_os_offer         = "UbuntuServer"
  vm_os_sku           = "18.04-LTS"
  vm_size             = "${lookup(var.vm_size, var.environment)}"
  public_ip_dns       = ["${var.ip_dns}"]
}
