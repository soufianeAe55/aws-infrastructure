output "eks_id" {
  value       = module.eks.cluster_id
  description = "The ID of the eks"
}
output "cluster_ca_cert" {
  value = module.eks.cluster_ca_cert
}

output "cluster_name" {
  value = module.eks.cluster_name
}

output "cluster_endpoint" {
  value = module.eks.cluster_endpoint
}