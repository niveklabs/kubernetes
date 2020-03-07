terraform {
  required_providers {
    kubernetes = ">= 1.11.1"
  }
}

data "kubernetes_storage_class" "this" {

  dynamic "metadata" {
    for_each = var.metadata
    content {
      annotations = metadata.value["annotations"]
      labels      = metadata.value["labels"]
      name        = metadata.value["name"]
    }
  }

}

