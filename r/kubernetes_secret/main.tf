terraform {
  required_providers {
    kubernetes = ">= 1.11.1"
  }
}

resource "kubernetes_secret" "this" {
  data = var.data
  type = var.type

  dynamic "metadata" {
    for_each = var.metadata
    content {
      annotations   = metadata.value["annotations"]
      generate_name = metadata.value["generate_name"]
      labels        = metadata.value["labels"]
      name          = metadata.value["name"]
      namespace     = metadata.value["namespace"]
    }
  }

}

