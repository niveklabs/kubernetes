terraform {
  required_providers {
    kubernetes = ">= 1.11.1"
  }
}

resource "kubernetes_endpoints" "this" {

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

  dynamic "subset" {
    for_each = var.subset
    content {

      dynamic "address" {
        for_each = subset.value.address
        content {
          hostname  = address.value["hostname"]
          ip        = address.value["ip"]
          node_name = address.value["node_name"]
        }
      }

      dynamic "not_ready_address" {
        for_each = subset.value.not_ready_address
        content {
          hostname  = not_ready_address.value["hostname"]
          ip        = not_ready_address.value["ip"]
          node_name = not_ready_address.value["node_name"]
        }
      }

      dynamic "port" {
        for_each = subset.value.port
        content {
          name     = port.value["name"]
          port     = port.value["port"]
          protocol = port.value["protocol"]
        }
      }

    }
  }

}

