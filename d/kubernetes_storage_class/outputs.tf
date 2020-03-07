output "allow_volume_expansion" {
  description = "returns a bool"
  value       = data.kubernetes_storage_class.this.allow_volume_expansion
}

output "id" {
  description = "returns a string"
  value       = data.kubernetes_storage_class.this.id
}

output "mount_options" {
  description = "returns a set of string"
  value       = data.kubernetes_storage_class.this.mount_options
}

output "parameters" {
  description = "returns a map of string"
  value       = data.kubernetes_storage_class.this.parameters
}

output "reclaim_policy" {
  description = "returns a string"
  value       = data.kubernetes_storage_class.this.reclaim_policy
}

output "storage_provisioner" {
  description = "returns a string"
  value       = data.kubernetes_storage_class.this.storage_provisioner
}

output "this" {
  value = kubernetes_storage_class.this
}

