terraform {
  required_providers {
    kubernetes = ">= 1.11.1"
  }
}

resource "kubernetes_service" "this" {

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
      cluster_ip                  = spec.value["cluster_ip"]
      external_ips                = spec.value["external_ips"]
      external_name               = spec.value["external_name"]
      external_traffic_policy     = spec.value["external_traffic_policy"]
      load_balancer_ip            = spec.value["load_balancer_ip"]
      load_balancer_source_ranges = spec.value["load_balancer_source_ranges"]
      publish_not_ready_addresses = spec.value["publish_not_ready_addresses"]
      selector                    = spec.value["selector"]
      session_affinity            = spec.value["session_affinity"]
      type                        = spec.value["type"]

      dynamic "port" {
        for_each = spec.value.port
        content {
          name        = port.value["name"]
          node_port   = port.value["node_port"]
          port        = port.value["port"]
          protocol    = port.value["protocol"]
          target_port = port.value["target_port"]
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

