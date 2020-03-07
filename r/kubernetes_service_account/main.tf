terraform {
  required_providers {
    kubernetes = ">= 1.11.1"
  }
}

resource "kubernetes_service_account" "this" {
  automount_service_account_token = var.automount_service_account_token

  dynamic "image_pull_secret" {
    for_each = var.image_pull_secret
    content {
      name = image_pull_secret.value["name"]
    }
  }

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

  dynamic "secret" {
    for_each = var.secret
    content {
      name = secret.value["name"]
    }
  }

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
    }
  }

}

