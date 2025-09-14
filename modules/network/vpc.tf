resource "aws_vpc" "vpc" {

  name             =
  cidr_block       = local.vpc_cidr

  region          = "eu-west-3"

  tags = {
    Name = "soufiane-vnet",
    Env = "DEV",
    CREATED_BY ="SOUFIANE"
  }

}