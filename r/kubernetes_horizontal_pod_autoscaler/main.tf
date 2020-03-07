terraform {
  required_providers {
    kubernetes = ">= 1.11.1"
  }
}

resource "kubernetes_horizontal_pod_autoscaler" "this" {

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
      max_replicas                      = spec.value["max_replicas"]
      min_replicas                      = spec.value["min_replicas"]
      target_cpu_utilization_percentage = spec.value["target_cpu_utilization_percentage"]

      dynamic "scale_target_ref" {
        for_each = spec.value.scale_target_ref
        content {
          api_version = scale_target_ref.value["api_version"]
          kind        = scale_target_ref.value["kind"]
          name        = scale_target_ref.value["name"]
        }
      }

    }
  }

}

