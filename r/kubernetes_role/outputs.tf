output "id" {
  description = "returns a string"
  value       = kubernetes_role.this.id
}

output "this" {
  value = kubernetes_role.this
}

