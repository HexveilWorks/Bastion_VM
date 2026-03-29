rg = {
  rg1 = {
    resource_group_name = "norwayrg"
    location            = "australiaeast"
  }
}


vnet = {
  vnet1 = {
    vnet_name             = "vnet1"
    address_space         = ["10.0.0.0/16"]
    location              = "australiaeast"
    resource_group_name   = "norwayrg"
    subnet_name           = "subnet1"
    address_prefixes      = ["10.0.1.0/24"]
    nic_name              = "nic1"
    vm_name               = "vm1"
    vm_size               = "Standard_F2"
    admin_username        = "adminuser"
    admin_password        = "AdminPassword123!"
    pip_name              = "firstpip"
    allocation_method     = "Static"
    ip_configuration_name = "firtsconfig"
    bastion_name          = "firtsbastion"
    sku                   = "Standard"
  }
}


keyvault = {
  key1 = {
    keyvault_name       = "keyvault1"
    location            = "australiaeast"
    resource_group_name = "norwayrg"
  }
}

