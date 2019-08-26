variable "location" {
  default = "westeurope"
}

variable "environment" {
    default = "dev"
}

variable "vm_size" {
    default = {
        "dev"   = "Standard_B2s"
        "prod"  = "Standard_D2s_v3"
    }
}

variable "vnet_name" {
  default = "myVnet"
}

variable "ip_dns" {
  description = "Public DNS entry"
  default = "zzdns"
}

variable "azure_resource_group_name" {
  description = "Name of Azure ressource group."
  default = "myResourceGroup"
}

variable "user_name" {
  description = "Name of SSH login user."
  default = "anton"
}
