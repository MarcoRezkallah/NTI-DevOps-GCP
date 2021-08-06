module "network" {
  source = "./modules/network"
}

module "compute" {
  source                = "./modules/compute"
  public_subnet_id      = module.network.public_subnet.id
  private_subnet_id     = module.network.private_subnet.id
  public_subnet_region  = module.network.public_subnet.region
  private_subnet_region = module.network.private_subnet.region
  vpc_tag               = var.vpc_tag
}

module "k8s" {
  source        = "./modules/k8s"
  network_id    = module.network.vpc_network.id
  subnetwork_id = module.network.public_subnet.id
  region        = module.network.public_subnet.region
  vpc_tag       = var.vpc_tag
}

module "security" {
  source     = "./modules/security"
  network_id = module.network.vpc_network.id
  vpc_tag    = var.vpc_tag
}

module "storage" {
  source           = "./modules/storage"
  main_bucket_name = var.main_bucket_name
}
