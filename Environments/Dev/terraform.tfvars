#Resource_Groups
rgnames = {
  rg1 = {
    name     = "frontend_rg"
    location = "westus"
  }
  rg2 = {
    name     = "backend_rg"
    location = "westus"
  }
  rg3 = {
    name     = "database_rg"
    location = "westus"
  }
}
# VirtualNetwork
vnets = {
  vnet1 = {
    name                = "frontend_vnet"
    resource_group_name = "frontend_rg"
    location            = "westus"
    address_space       = ["10.1.0.0/16"]
  }
  vnet2 = {
    name                = "backend_vnet"
    resource_group_name = "backend_rg"
    location            = "westus"
    address_space       = ["10.2.0.0/16"]
  }
  vnet3 = {
    name                = "database_vnet"
    resource_group_name = "database_rg"
    location            = "westus"
    address_space       = ["10.3.0.0/16"]
  }
}
#Subnets
snets = {
  subnet1 = {
    name                 = "frontend_subnet"
    resource_group_name  = "frontend_rg"
    virtual_network_name = "frontend_vnet"
    address_prefixes     = ["10.1.0.0/24"]
  }
  subnet2 = {
    name                 = "backend_subnet"
    resource_group_name  = "backend_rg"
    virtual_network_name = "backend_vnet"
    address_prefixes     = ["10.2.0.0/24"]
  }
  subnet3 = {
    name                 = "database_subnet"
    resource_group_name  = "database_rg"
    virtual_network_name = "database_vnet"
    address_prefixes     = ["10.3.0.0/24"]
  }
}

#Public IPs
pips = {
  public_ip1 = {
    name                = "frontend-pip"
    resource_group_name = "frontend_rg"
    location            = "westus"
    allocation_method   = "Static"
  }
  public_ip2 = {
    name                = "backend-pip"
    resource_group_name = "backend_rg"
    location            = "westus"
    allocation_method   = "Static"
  }
  public_ip3 = {
    name                = "database-pip"
    resource_group_name = "database_rg"
    location            = "westus"
    allocation_method   = "Static"
  }
}

#Virtual Machines
vms = {
  vm1 = {
    name                 = "frontendvm"
    nic_name             = "frontend-nic"
    location             = "westus"
    resource_group_name  = "frontend_rg"
    virtual_network_name = "frontend_vnet"
    subnet_name          = "frontend_subnet"
    pip_name             = "frontend-pip"
    size                 = "Standard_D2s_V3"
    admin_username       = "devopsadmin"
      auth                 = false
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
    publisher            = "Canonical"
    offer                = "ubuntu-24_04-lts"
    sku                  = "server"
    version              = "latest"
  }

  vm2 = {
    name                 = "backendvm"
    nic_name             = "backend-nic"
    location             = "westus"
    resource_group_name  = "backend_rg"
    virtual_network_name = "backend_vnet"
    subnet_name          = "backend_subnet"
    pip_name             = "backend-pip"
    size                 = "Standard_D2s_V3"
    admin_username       = "devopsadmin"
    auth                 = false
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
    publisher            = "Canonical"
    offer                = "ubuntu-24_04-lts"
    sku                  = "server"
    version              = "latest"
  }
  # vm3 = {
  #     name                 = "databasevm"
  #     nic_name             = "database-nic"
  #     location             = "westus"
  #     resource_group_name  = "database_rg"
  #     virtual_network_name = "database_vnet"
  #     subnet_name          = "database_subnet"
  #     pip_name             = "database-pip"
  #     size                 = "Standard_D2s_V3"
  #     admin_username       = "devopsadmin"
  #     auth                 = false
  #     caching              = "ReadWrite"
  #     storage_account_type = "Standard_LRS"
  #     publisher            = "Canonical"
  #     offer                = "ubuntu-24_04-lts"
  #     sku                  = "server"
  #     version              = "latest"
  #   }
}
vaults = {
  vault1 = {
    name                        = "singhad1"
    location                    = "westus"
    resource_group_name         = "frontend_rg"
    rbac_authorization_enabled  = true
    enabled_for_disk_encryption = true
    tenant_id                   = "4f2fd054-7754-44ca-83df-5b887ec8dae3"
    purge_protection_enabled    = false
    sku_name                    = "standard"
    soft_delete_retention_days  = 7
  }
}