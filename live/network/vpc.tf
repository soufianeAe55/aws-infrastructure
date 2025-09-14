module "vpc" {

    source = "../../modules/network"

    vpc_cidr = "10.0.0.0/24"

}