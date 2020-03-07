output "id" {
  description = "returns a string"
  value       = kubernetes_persistent_volume.this.id
}

output "this" {
  value = kubernetes_persistent_volume.this
}

