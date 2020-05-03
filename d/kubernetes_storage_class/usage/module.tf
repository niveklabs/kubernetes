module "kubernetes_storage_class" {
  source = "./modules/kubernetes/d/kubernetes_storage_class"


  metadata = [{
    annotations      = {}
    generation       = null
    labels           = {}
    name             = null
    resource_version = null
    self_link        = null
    uid              = null
  }]
}
