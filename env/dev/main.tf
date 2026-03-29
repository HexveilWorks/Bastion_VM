

 module "rg" {
   source = "../../module/rg"
   rg = var.rg
 }

 module "vnet" {
  depends_on = [ module.rg ]
   source = "../../module/networking"
   vnet = var.vnet
 }

 module "vm" {
  depends_on = [ module.vnet, module.rg ]
  source = "../../module/compute"
  vnet = var.vnet
   
 }

 module "bastion" {
  depends_on = [ module.vnet , module.rg]
  source = "../../module/bastion"
  vnet = var.vnet
   
 }

 module "key_vault" {
   source = "../../module/Key_vault"
   keyvault = var.keyvault
 }