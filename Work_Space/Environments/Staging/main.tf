module "rg" {
  source = "../../module/rg"
  rg     = var.resource_group_name
}

module "sa" {
  source     = "../../module/sa"
   sa  = var.storage_account_name
  depends_on = [module.rg]

}

module "vnet" {
  source     = "../../module/vnet"
  vnet       = var.vnet_name
  depends_on = [module.rg]

}

module "subnet" {
  source     = "../../module/subnet"
  subnet     = var.subnet_name
  depends_on = [module.vnet]
}

module "vm" {
  source     = "../../module/vm"
  vms        = var.vms
  depends_on = [module.vnet]

}

module "bastion" {
  source     = "../../module/bastion"
  bastion   = var.bastions
  depends_on = [module.vnet]

}