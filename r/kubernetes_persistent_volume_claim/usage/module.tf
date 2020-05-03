module "kubernetes_persistent_volume_claim" {
  source = "./modules/kubernetes/r/kubernetes_persistent_volume_claim"

  wait_until_bound = null

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
    access_modes = []
    resources = [{
      limits   = {}
      requests = {}
    }]
    selector = [{
      match_expressions = [{
        key      = null
        operator = null
        values   = []
      }]
      match_labels = {}
    }]
    storage_class_name = null
    volume_name        = null
  }]

  timeouts = [{
    create = null
  }]
}
