module "kubernetes_ingress" {
  source = "./kubernetes/r/kubernetes_ingress"


  metadata = [{
    annotations      = {}
    generate_name    = null
    generation       = null
    labels           = {}
    name             = null
    namespace        = null
    resource_version = null
    self_link        = null
    uid              = null
  }]

  spec = [{
    backend = [{
      service_name = null
      service_port = null
    }]
    rule = [{
      host = null
      http = [{
        path = [{
          backend = [{
            service_name = null
            service_port = null
          }]
          path = null
        }]
      }]
    }]
    tls = [{
      hosts       = []
      secret_name = null
    }]
  }]
}
