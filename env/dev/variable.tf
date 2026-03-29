
variable "rg" {
  type = map(object({
    resource_group_name = string
    location            = string
  }))
}




variable "vnet" {
  type = map(object({
    nic_name              = string
    location              = string
    resource_group_name   = string
    vm_name               = string
    vm_size               = string
    admin_username        = string
    admin_password        = string
    subnet_name           = string
    vnet_name             = string
    address_prefixes      = list(string)
    address_space         = list(string)
    sku                   = string
    bastion_name          = string
    ip_configuration_name = string
    allocation_method     = string
    pip_name              = string
  }))
}


variable "keyvault" {
  type = map(object({
    keyvault_name       = string
    location            = string
    resource_group_name = string

  }))
}