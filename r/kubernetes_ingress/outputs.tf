output "id" {
  description = "returns a string"
  value       = kubernetes_ingress.this.id
}

output "load_balancer_ingress" {
  description = "returns a list of object"
  value       = kubernetes_ingress.this.load_balancer_ingress
}

output "this" {
  value = kubernetes_ingress.this
}

