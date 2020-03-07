output "id" {
  description = "returns a string"
  value       = kubernetes_resource_quota.this.id
}

output "this" {
  value = kubernetes_resource_quota.this
}

