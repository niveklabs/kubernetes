module "kubernetes_resource_quota" {
  source = "./kubernetes/r/kubernetes_resource_quota"


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
    hard   = {}
    scopes = []
  }]

  timeouts = [{
    create = null
    update = null
  }]
}
