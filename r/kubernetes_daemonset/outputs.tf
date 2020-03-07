output "id" {
  description = "returns a string"
  value       = kubernetes_daemonset.this.id
}

output "this" {
  value = kubernetes_daemonset.this
}

