output "id" {
  description = "returns a string"
  value       = kubernetes_cluster_role_binding.this.id
}

output "this" {
  value = kubernetes_cluster_role_binding.this
}

