output "id" {
  description = "returns a string"
  value       = kubernetes_secret.this.id
}

output "this" {
  value = kubernetes_secret.this
}

