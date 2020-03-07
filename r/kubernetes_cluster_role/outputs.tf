output "id" {
  description = "returns a string"
  value       = kubernetes_cluster_role.this.id
}

output "this" {
  value = kubernetes_cluster_role.this
}

