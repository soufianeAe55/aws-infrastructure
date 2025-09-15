output "eks_id" {
  value       = module.eks.cluster_id
  description = "The ID of the eks"
}
