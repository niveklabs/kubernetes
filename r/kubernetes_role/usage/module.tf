module "kubernetes_role" {
  source = "./kubernetes/r/kubernetes_role"


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

  rule = [{
    api_groups     = []
    resource_names = []
    resources      = []
    verbs          = []
  }]
}
