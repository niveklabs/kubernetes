output "id" {
  description = "returns a string"
  value       = kubernetes_service.this.id
}

output "load_balancer_ingress" {
  description = "returns a list of object"
  value       = kubernetes_service.this.load_balancer_ingress
}

output "this" {
  value = kubernetes_service.this
}

