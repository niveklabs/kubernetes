module "kubernetes_pod_disruption_budget" {
  source = "./modules/kubernetes/r/kubernetes_pod_disruption_budget"


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
    max_unavailable = null
    min_available   = null
    selector = [{
      match_expressions = [{
        key      = null
        operator = null
        values   = []
      }]
      match_labels = {}
    }]
  }]
}
