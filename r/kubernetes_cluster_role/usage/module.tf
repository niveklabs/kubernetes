module "kubernetes_cluster_role" {
  source = "./modules/kubernetes/r/kubernetes_cluster_role"


  metadata = [{
    annotations      = {}
    generation       = null
    labels           = {}
    name             = null
    resource_version = null
    self_link        = null
    uid              = null
  }]

  rule = [{
    api_groups        = []
    non_resource_urls = []
    resource_names    = []
    resources         = []
    verbs             = []
  }]
}
