module "kubernetes_endpoints" {
  source = "./kubernetes/r/kubernetes_endpoints"


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

  subset = [{
    address = [{
      hostname  = null
      ip        = null
      node_name = null
    }]
    not_ready_address = [{
      hostname  = null
      ip        = null
      node_name = null
    }]
    port = [{
      name     = null
      port     = null
      protocol = null
    }]
  }]
}
