output "id" {
  description = "returns a string"
  value       = kubernetes_api_service.this.id
}

output "this" {
  value = kubernetes_api_service.this
}

