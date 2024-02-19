module "vpc" {
  source      = "./module/vpc"
  vpc_cidr    = var.vpc_cidr
  subnet_cidr = var.subnet_cidr
}

module "sg" {
  source = "./module/sg"
  vpc_id = module.vpc.vpc_id
}
module "ec2" {
  source  = "./module/ec2"
  sg_id   = module.sg.sg_id
  subnets = module.vpc.subnets_id
}
module "alb" {
  source    = "./module/alb"
  sg_id     = module.sg.sg_id
  subnet_id = module.vpc.subnets_id
  vps_id    = module.vpc.vpc_id
  instances = module.ec2.instances
}
