terraform {
  required_providers {
    kubernetes = ">= 1.11.1"
  }
}

resource "kubernetes_api_service" "this" {

  dynamic "metadata" {
    for_each = var.metadata
    content {
      annotations   = metadata.value["annotations"]
      generate_name = metadata.value["generate_name"]
      labels        = metadata.value["labels"]
      name          = metadata.value["name"]
    }
  }

  dynamic "spec" {
    for_each = var.spec
    content {
      ca_bundle                = spec.value["ca_bundle"]
      group                    = spec.value["group"]
      group_priority_minimum   = spec.value["group_priority_minimum"]
      insecure_skip_tls_verify = spec.value["insecure_skip_tls_verify"]
      version                  = spec.value["version"]
      version_priority         = spec.value["version_priority"]

      dynamic "service" {
        for_each = spec.value.service
        content {
          name      = service.value["name"]
          namespace = service.value["namespace"]
          port      = service.value["port"]
        }
      }

    }
  }

}

