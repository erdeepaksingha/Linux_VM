variable "rgnames" {
  type = map(object({
    name     = string
    location = string
  }))
}

variable "vnets" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    address_space       = list(string)
  }))
}

variable "snets" {
  type = map(object({
    name                 = string
    resource_group_name  = string
    virtual_network_name = string
    address_prefixes     = list(string)
  }))
}

variable "pips" {}

variable "vms" {
  type = map(object({
    name                 = string
    nic_name             = string
    location             = string
    resource_group_name  = string
    virtual_network_name = string
    subnet_name          = string
    pip_name             = string
    size                 = string
    admin_username       = string
    #    admin_password        = string
    auth                 = bool
    caching              = string
    storage_account_type = string
    publisher            = string
    offer                = string
    sku                  = string
    version              = string
  }))
}

variable "vaults" {
  type = map(object({
    name                        = string
    location                    = string
    resource_group_name         = string
    rbac_authorization_enabled  = bool
    enabled_for_disk_encryption = bool
    tenant_id                   = string
    soft_delete_retention_days  = number
    purge_protection_enabled    = bool
    sku_name                    = string
  }))
}