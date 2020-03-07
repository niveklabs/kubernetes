module "kubernetes_service" {
  source = "./kubernetes/d/kubernetes_service"


  metadata = [{
    annotations      = {}
    generation       = null
    labels           = {}
    name             = null
    namespace        = null
    resource_version = null
    self_link        = null
    uid              = null
  }]
}
