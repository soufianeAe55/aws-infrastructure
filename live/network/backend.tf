terraform {
  backend "s3" {
    bucket  = "soufiane-tf-state"
    key     = "live/vpc/terraform.tfstate" # <- project-specific path
    region  = "eu-west-3"
    encrypt = true
  }
}
