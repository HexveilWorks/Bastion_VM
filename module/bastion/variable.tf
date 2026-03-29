

variable "vnet" {
  type = map(object({
    vnet_name           = string
    location            = string
    resource_group_name = string
    allocation_method   = string
    pip_name            = string
    subnet_name         = string
    sku                 = string
    bastion_name        = string
    ip_configuration_name=string
  }))
}
