resource "aws_vpc" "vpc" {

  cidr_block       = local.vpc_cidr

  region          = "eu-west-3"

  private_subnets = ["10.0.10.0/24" ]
  public_subnets  = ["10.0.101.0/24"]

  tags = {
    Name = "soufiane-vnet",
    Env = "DEV",
    CREATED_BY ="SOUFIANE"
  }

}