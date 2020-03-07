output "default_secret_name" {
  description = "returns a string"
  value       = kubernetes_service_account.this.default_secret_name
}

output "id" {
  description = "returns a string"
  value       = kubernetes_service_account.this.id
}

output "this" {
  value = kubernetes_service_account.this
}

