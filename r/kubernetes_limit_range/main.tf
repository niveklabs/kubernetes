terraform {
  required_providers {
    kubernetes = ">= 1.11.1"
  }
}

resource "kubernetes_limit_range" "this" {

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

  dynamic "spec" {
    for_each = var.spec
    content {

      dynamic "limit" {
        for_each = spec.value.limit
        content {
          default                 = limit.value["default"]
          default_request         = limit.value["default_request"]
          max                     = limit.value["max"]
          max_limit_request_ratio = limit.value["max_limit_request_ratio"]
          min                     = limit.value["min"]
          type                    = limit.value["type"]
        }
      }

    }
  }

}

