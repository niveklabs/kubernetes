output "id" {
  description = "returns a string"
  value       = kubernetes_stateful_set.this.id
}

output "this" {
  value = kubernetes_stateful_set.this
}

