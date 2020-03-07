terraform {
  required_providers {
    kubernetes = ">= 1.11.1"
  }
}

resource "kubernetes_network_policy" "this" {

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
      policy_types = spec.value["policy_types"]

      dynamic "egress" {
        for_each = spec.value.egress
        content {

          dynamic "ports" {
            for_each = egress.value.ports
            content {
              port     = ports.value["port"]
              protocol = ports.value["protocol"]
            }
          }

          dynamic "to" {
            for_each = egress.value.to
            content {

              dynamic "ip_block" {
                for_each = to.value.ip_block
                content {
                  cidr   = ip_block.value["cidr"]
                  except = ip_block.value["except"]
                }
              }

              dynamic "namespace_selector" {
                for_each = to.value.namespace_selector
                content {
                  match_labels = namespace_selector.value["match_labels"]

                  dynamic "match_expressions" {
                    for_each = namespace_selector.value.match_expressions
                    content {
                      key      = match_expressions.value["key"]
                      operator = match_expressions.value["operator"]
                      values   = match_expressions.value["values"]
                    }
                  }

                }
              }

              dynamic "pod_selector" {
                for_each = to.value.pod_selector
                content {
                  match_labels = pod_selector.value["match_labels"]

                  dynamic "match_expressions" {
                    for_each = pod_selector.value.match_expressions
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

        }
      }

      dynamic "ingress" {
        for_each = spec.value.ingress
        content {

          dynamic "from" {
            for_each = ingress.value.from
            content {

              dynamic "ip_block" {
                for_each = from.value.ip_block
                content {
                  cidr   = ip_block.value["cidr"]
                  except = ip_block.value["except"]
                }
              }

              dynamic "namespace_selector" {
                for_each = from.value.namespace_selector
                content {
                  match_labels = namespace_selector.value["match_labels"]

                  dynamic "match_expressions" {
                    for_each = namespace_selector.value.match_expressions
                    content {
                      key      = match_expressions.value["key"]
                      operator = match_expressions.value["operator"]
                      values   = match_expressions.value["values"]
                    }
                  }

                }
              }

              dynamic "pod_selector" {
                for_each = from.value.pod_selector
                content {
                  match_labels = pod_selector.value["match_labels"]

                  dynamic "match_expressions" {
                    for_each = pod_selector.value.match_expressions
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

          dynamic "ports" {
            for_each = ingress.value.ports
            content {
              port     = ports.value["port"]
              protocol = ports.value["protocol"]
            }
          }

        }
      }

      dynamic "pod_selector" {
        for_each = spec.value.pod_selector
        content {
          match_labels = pod_selector.value["match_labels"]

          dynamic "match_expressions" {
            for_each = pod_selector.value.match_expressions
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

}

