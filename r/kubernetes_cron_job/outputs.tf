output "id" {
  description = "returns a string"
  value       = kubernetes_cron_job.this.id
}

output "this" {
  value = kubernetes_cron_job.this
}

