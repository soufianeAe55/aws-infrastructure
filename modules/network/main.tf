locals  {
    vpc_cidr = var.vpc_cidr

    subnets = [
       {
           name : "public_subnet"
           cidr : "10.0.1.0/24"
           availability_zone = "eu-west-3a"
           is_public : true
       },
       {
          name : "private_subnet"
          cidr : "10.0.2.0/24"
          availability_zone = "eu-west-3b"
          is_public : false
       }
     ]
 }