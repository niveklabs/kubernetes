module "kubernetes_horizontal_pod_autoscaler" {
  source = "./kubernetes/r/kubernetes_horizontal_pod_autoscaler"


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
    max_replicas = null
    min_replicas = null
    scale_target_ref = [{
      api_version = null
      kind        = null
      name        = null
    }]
    target_cpu_utilization_percentage = null
  }]
}
