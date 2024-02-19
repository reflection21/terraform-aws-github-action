module "vps" {
  source   = "./module/vps"
  vps_cidr = var.vps_cidr
}
