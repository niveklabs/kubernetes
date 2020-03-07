output "id" {
  description = "returns a string"
  value       = kubernetes_config_map.this.id
}

output "this" {
  value = kubernetes_config_map.this
}

