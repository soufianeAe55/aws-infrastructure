resource "aws_subnet" "subnets" {

     for_each = {for subnet in local.subnets : subnet.name => subnet}

     vpc_id     = aws_vpc.vpc.id
     cidr_block = each.value.cidr
     map_public_ip_on_launch = each.value.is_public

     tags = {
        Name = each.value.name
        Type = each.value.is_public ? "public" : "private"

        # Required for EKS load balancers
        (each.value.is_public ? "kubernetes.io/role/elb" : "kubernetes.io/role/internal-elb") = "1"
     }

}