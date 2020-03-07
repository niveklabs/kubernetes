terraform {
  required_providers {
    kubernetes = ">= 1.11.1"
  }
}

resource "kubernetes_persistent_volume_claim" "this" {
  wait_until_bound = var.wait_until_bound

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
      access_modes       = spec.value["access_modes"]
      storage_class_name = spec.value["storage_class_name"]
      volume_name        = spec.value["volume_name"]

      dynamic "resources" {
        for_each = spec.value.resources
        content {
          limits   = resources.value["limits"]
          requests = resources.value["requests"]
        }
      }

      dynamic "selector" {
        for_each = spec.value.selector
        content {
          match_labels = selector.value["match_labels"]

          dynamic "match_expressions" {
            for_each = selector.value.match_expressions
            content {
              key      = match_expressions.value["key"]
              operator = match_expressions.value["operator"]
              values   = match_expressions.value["values"]
            }
          }

        }
      }

    }
  }

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
    }
  }

}

