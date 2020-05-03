module "kubernetes_cluster_role_binding" {
  source = "./modules/kubernetes/r/kubernetes_cluster_role_binding"


  metadata = [{
    annotations      = {}
    generation       = null
    labels           = {}
    name             = null
    resource_version = null
    self_link        = null
    uid              = null
  }]

  role_ref = [{
    api_group = null
    kind      = null
    name      = null
  }]

  subject = [{
    api_group = null
    kind      = null
    name      = null
    namespace = null
  }]
}
