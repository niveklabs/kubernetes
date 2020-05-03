module "kubernetes_config_map" {
  source = "./modules/kubernetes/r/kubernetes_config_map"

  binary_data = {}
  data        = {}

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
}
