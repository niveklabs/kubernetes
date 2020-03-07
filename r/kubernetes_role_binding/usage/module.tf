module "kubernetes_role_binding" {
  source = "./kubernetes/r/kubernetes_role_binding"


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
