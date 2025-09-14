resource "aws_vpc" "vpc" {
  cidr_block       = local.vpc_cidr

  region          = "eu-west-3"

  tags = {
    Name = "main",
    Env = "DEV",
    CREATED_BY ="SOUFIANE"
  }

}