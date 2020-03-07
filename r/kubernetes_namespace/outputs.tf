output "id" {
  description = "returns a string"
  value       = kubernetes_namespace.this.id
}

output "this" {
  value = kubernetes_namespace.this
}

