terraform {
  required_providers {
    kubernetes = ">= 1.11.1"
  }
}

resource "kubernetes_ingress" "this" {

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

      dynamic "backend" {
        for_each = spec.value.backend
        content {
          service_name = backend.value["service_name"]
          service_port = backend.value["service_port"]
        }
      }

      dynamic "rule" {
        for_each = spec.value.rule
        content {
          host = rule.value["host"]

          dynamic "http" {
            for_each = rule.value.http
            content {

              dynamic "path" {
                for_each = http.value.path
                content {
                  path = path.value["path"]

                  dynamic "backend" {
                    for_each = path.value.backend
                    content {
                      service_name = backend.value["service_name"]
                      service_port = backend.value["service_port"]
                    }
                  }

                }
              }

            }
          }

        }
      }

      dynamic "tls" {
        for_each = spec.value.tls
        content {
          hosts       = tls.value["hosts"]
          secret_name = tls.value["secret_name"]
        }
      }

    }
  }

}

