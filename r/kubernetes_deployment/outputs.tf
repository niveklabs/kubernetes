output "id" {
  description = "returns a string"
  value       = kubernetes_deployment.this.id
}

output "this" {
  value = kubernetes_deployment.this
}

