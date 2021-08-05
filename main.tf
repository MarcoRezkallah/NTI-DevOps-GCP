module "network" {
  source = "./modules/network"
}

module "compute" {
  source              = "./modules/compute"
  public_subnet_id    = module.network.public_subnet.id
  private_subnet_id   = module.network.private_subnet.id
  public_subnet_region  = module.network.public_subnet.region
  private_subnet_region = module.network.private_subnet.region
}

