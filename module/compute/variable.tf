
variable "vnet" {
  type = map(object({
    nic_name=string
    location=string
    resource_group_name=string
    vm_name=string
    vm_size=string
    admin_username=string
    admin_password=string
    subnet_name=string
    vnet_name=string
  }))
}



