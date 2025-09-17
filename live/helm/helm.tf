module "helm" {

  source = "../../modules/helm"

  cluster_ca_cert  = data.terraform_remote_state.eks.outputs.cluster_ca_cert
  cluster_endpoint = data.terraform_remote_state.eks.outputs.cluster_endpoint
  cluster_name     = data.terraform_remote_state.eks.outputs.cluster_name
}