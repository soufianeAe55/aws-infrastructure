/*resource "aws_vpc" "vpc" {

  cidr_block = local.vpc_cidr

  region = "eu-west-3"

  private_subnets = ["10.0.10.0/24"]
  public_subnets  = ["10.0.101.0/24"]

  tags = {
    Name       = "soufiane-vnet",
    Env        = "DEV",
    CREATED_BY = "SOUFIANE"
  }

}*/
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"

  name = "dev-vpc"
  cidr = var.vpc_cidr

  azs             = ["eu-west-3a", "eu-west-3b", "eu-west-3c"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  enable_nat_gateway     = yes   # NAT for private subnets (so worker nodes can reach internet)
  single_nat_gateway     = false   # Only one NAT to save cost
  enable_dns_hostnames   = true
  enable_dns_support     = true

  create_igw = true

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
