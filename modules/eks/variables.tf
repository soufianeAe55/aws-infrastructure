variable "vpc_id" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "subnet_ids" {
  type = list(string)
}