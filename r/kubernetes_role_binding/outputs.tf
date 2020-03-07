output "id" {
  description = "returns a string"
  value       = kubernetes_role_binding.this.id
}

output "this" {
  value = kubernetes_role_binding.this
}

