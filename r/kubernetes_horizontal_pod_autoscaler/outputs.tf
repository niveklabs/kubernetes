output "id" {
  description = "returns a string"
  value       = kubernetes_horizontal_pod_autoscaler.this.id
}

output "this" {
  value = kubernetes_horizontal_pod_autoscaler.this
}

