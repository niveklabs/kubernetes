terraform {
  required_providers {
    kubernetes = ">= 1.11.1"
  }
}

resource "kubernetes_role_binding" "this" {

  dynamic "metadata" {
    for_each = var.metadata
    content {
      annotations = metadata.value["annotations"]
      labels      = metadata.value["labels"]
      name        = metadata.value["name"]
      namespace   = metadata.value["namespace"]
    }
  }

  dynamic "role_ref" {
    for_each = var.role_ref
    content {
      api_group = role_ref.value["api_group"]
      kind      = role_ref.value["kind"]
      name      = role_ref.value["name"]
    }
  }

  dynamic "subject" {
    for_each = var.subject
    content {
      api_group = subject.value["api_group"]
      kind      = subject.value["kind"]
      name      = subject.value["name"]
      namespace = subject.value["namespace"]
    }
  }

}

