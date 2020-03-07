output "id" {
  description = "returns a string"
  value       = kubernetes_pod_disruption_budget.this.id
}

output "this" {
  value = kubernetes_pod_disruption_budget.this
}

