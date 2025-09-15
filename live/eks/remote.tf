data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "soufiane-tf-state"
    key    = "live/vpc/terraform.tfstate" # <- project-specific path
    region = "eu-west-3"
  }
}