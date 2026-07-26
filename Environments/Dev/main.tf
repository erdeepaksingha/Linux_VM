module "resource_group" {
  source  = "../../Modules/Resource_Group"
  rgnames = var.rgnames
}

module "Virtual_network" {
  depends_on = [module.resource_group]
  source     = "../../Modules/Virtual_Network"
  vnets      = var.vnets
}

module "subnets" {
  depends_on = [module.Virtual_network]
  source     = "../../Modules/Subnet"
  snets      = var.snets
}

module "public_ip" {
  source = "../../Modules/Public_IP"
  pips   = var.pips
}

module "linux_vm" {
  depends_on = [module.resource_group, module.public_ip, module.Virtual_network, module.subnets]
  source     = "../../Modules/Linux_Virtual_Machine"
  vms        = var.vms
  pips       = var.pips

}

module "keyvault" {
  depends_on = [module.resource_group]
  source     = "../../Modules/key_vault"
  vaults     = var.vaults
}