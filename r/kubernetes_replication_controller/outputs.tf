output "id" {
  description = "returns a string"
  value       = kubernetes_replication_controller.this.id
}

output "this" {
  value = kubernetes_replication_controller.this
}

