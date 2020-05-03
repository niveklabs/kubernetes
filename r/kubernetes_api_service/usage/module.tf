module "kubernetes_api_service" {
  source = "./modules/kubernetes/r/kubernetes_api_service"


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

  spec = [{
    ca_bundle                = null
    group                    = null
    group_priority_minimum   = null
    insecure_skip_tls_verify = null
    service = [{
      name      = null
      namespace = null
      port      = null
    }]
    version          = null
    version_priority = null
  }]
}
