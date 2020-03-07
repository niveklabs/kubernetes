output "id" {
  description = "returns a string"
  value       = kubernetes_endpoints.this.id
}

output "this" {
  value = kubernetes_endpoints.this
}

