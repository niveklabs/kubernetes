module "kubernetes_namespace" {
  source = "./modules/kubernetes/r/kubernetes_namespace"


  metadata = [{
    annotations      = {}
    generate_name    = null
    generation       = null
    labels           = {}
    name             = null
    resource_version = null
    self_link        = null
    uid              = null
  }]

  timeouts = [{
    delete = null
  }]
}
