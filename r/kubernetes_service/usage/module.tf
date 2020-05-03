module "kubernetes_service" {
  source = "./modules/kubernetes/r/kubernetes_service"


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
    cluster_ip                  = null
    external_ips                = []
    external_name               = null
    external_traffic_policy     = null
    load_balancer_ip            = null
    load_balancer_source_ranges = []
    port = [{
      name        = null
      node_port   = null
      port        = null
      protocol    = null
      target_port = null
    }]
    publish_not_ready_addresses = null
    selector                    = {}
    session_affinity            = null
    type                        = null
  }]

  timeouts = [{
    create = null
  }]
}
