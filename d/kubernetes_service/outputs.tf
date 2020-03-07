output "id" {
  description = "returns a string"
  value       = data.kubernetes_service.this.id
}

output "load_balancer_ingress" {
  description = "returns a list of object"
  value       = data.kubernetes_service.this.load_balancer_ingress
}

output "spec" {
  description = "returns a list of object"
  value       = data.kubernetes_service.this.spec
}

output "this" {
  value = kubernetes_service.this
}

