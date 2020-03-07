output "id" {
  description = "returns a string"
  value       = kubernetes_pod.this.id
}

output "this" {
  value = kubernetes_pod.this
}

