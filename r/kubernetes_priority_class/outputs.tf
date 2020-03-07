output "id" {
  description = "returns a string"
  value       = kubernetes_priority_class.this.id
}

output "this" {
  value = kubernetes_priority_class.this
}

