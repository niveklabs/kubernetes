module "kubernetes_limit_range" {
  source = "./kubernetes/r/kubernetes_limit_range"


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
    limit = [{
      default                 = {}
      default_request         = {}
      max                     = {}
      max_limit_request_ratio = {}
      min                     = {}
      type                    = null
    }]
  }]
}
