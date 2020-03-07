output "data" {
  description = "returns a map of string"
  value       = data.kubernetes_secret.this.data
  sensitive   = true
}

output "id" {
  description = "returns a string"
  value       = data.kubernetes_secret.this.id
}

output "type" {
  description = "returns a string"
  value       = data.kubernetes_secret.this.type
}

output "this" {
  value = kubernetes_secret.this
}

