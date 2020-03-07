output "id" {
  description = "returns a string"
  value       = kubernetes_storage_class.this.id
}

output "this" {
  value = kubernetes_storage_class.this
}

