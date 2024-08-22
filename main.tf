
provider "aws" {
  region = "us-east-1"
}

# Create Network Module
module "my_vpc" {
  source = "./modules/networks"
}

# Create Instances Module
module "my_instances" {
  source                         = "./modules/instances"
  public_subnet_id_from_network  = module.my_vpc.public_subnet_id
  private_subnet_id_from_network = module.my_vpc.private_subnet_id
}
