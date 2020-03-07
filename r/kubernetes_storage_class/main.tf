terraform {
  required_providers {
    kubernetes = ">= 1.11.1"
  }
}

resource "kubernetes_storage_class" "this" {
  allow_volume_expansion = var.allow_volume_expansion
  mount_options          = var.mount_options
  parameters             = var.parameters
  reclaim_policy         = var.reclaim_policy
  storage_provisioner    = var.storage_provisioner
  volume_binding_mode    = var.volume_binding_mode

  dynamic "metadata" {
    for_each = var.metadata
    content {
      annotations   = metadata.value["annotations"]
      generate_name = metadata.value["generate_name"]
      labels        = metadata.value["labels"]
      name          = metadata.value["name"]
    }
  }

}

