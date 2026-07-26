variable "vms" {
  type = map(object({
    name                  = string
    nic_name              = string
    location              = string
    resource_group_name   = string
    virtual_network_name  = string
    subnet_name           = string
    pip_name              = string
    size                  = string
    admin_username        = string
  #  admin_password        = string
    auth                  = bool
    caching               = string
    storage_account_type  = string
    publisher             = string
    offer                 = string
    sku                   = string
    version               = string
  }))
}

variable "pips" {
    type = map(object({
        name                = string 
        resource_group_name = string
        location            = string
        allocation_method  = string
    }))
}

