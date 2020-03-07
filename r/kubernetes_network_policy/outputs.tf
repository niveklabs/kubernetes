output "id" {
  description = "returns a string"
  value       = kubernetes_network_policy.this.id
}

output "this" {
  value = kubernetes_network_policy.this
}

