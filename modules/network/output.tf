output "vpc_id" {
  value       = aws_vpc.vpc.id
  description = "The ID of the VPC"
}
output "igw_id" {
  value       = aws_internet_gateway.gw.id
  description = "The ID of the internet gateway"
}
output "public_subnet_id" {
  value       = aws_subnet.subnets["public_subnet"].id
  description = "The ID public subnet"
}
output "private_subnet_id" {
  value       = aws_subnet.subnets["private_subnet"].id
  description = "The ID private subnet"
}

