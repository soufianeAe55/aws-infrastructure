output "vpc_id" {
  value       = module.vpc.vpc_id
  description = "The ID of the VPC"
}
output "igw_id" {
  value       = module.vpc.igw_id
  description = "The ID of the internet gateway"
}
output "public_subnet_ids" {
  value       = module.vpc.public_subnet_ids
  description = "The ID public subnet"
}
output "private_subnet_ids" {
  value       = module.vpc.private_subnet_ids
  description = "The ID private subnet"
}
