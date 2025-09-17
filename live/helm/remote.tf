data "terraform_remote_state" "eks" {
  backend = "s3"
  config = {
    bucket = "soufiane-tf-state"
    key    = "live/eks/terraform.tfstate" # <- project-specific path
    region = "eu-west-3"
  }
}