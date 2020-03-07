output "id" {
  description = "returns a string"
  value       = kubernetes_job.this.id
}

output "this" {
  value = kubernetes_job.this
}

