output "cluster_id" {
  value = module.eks.cluster_id
}

output "cluster_ca_cert" {
  value = module.eks.cluster_certificate_authority_data
}

output "cluster_name" {
  value = module.eks.cluster_name
}

output "cluster_endpoint" {
  value = module.eks.cluster_endpoint
}