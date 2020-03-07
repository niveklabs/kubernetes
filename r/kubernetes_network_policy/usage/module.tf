module "kubernetes_network_policy" {
  source = "./kubernetes/r/kubernetes_network_policy"


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
    egress = [{
      ports = [{
        port     = null
        protocol = null
      }]
      to = [{
        ip_block = [{
          cidr   = null
          except = []
        }]
        namespace_selector = [{
          match_expressions = [{
            key      = null
            operator = null
            values   = []
          }]
          match_labels = {}
        }]
        pod_selector = [{
          match_expressions = [{
            key      = null
            operator = null
            values   = []
          }]
          match_labels = {}
        }]
      }]
    }]
    ingress = [{
      from = [{
        ip_block = [{
          cidr   = null
          except = []
        }]
        namespace_selector = [{
          match_expressions = [{
            key      = null
            operator = null
            values   = []
          }]
          match_labels = {}
        }]
        pod_selector = [{
          match_expressions = [{
            key      = null
            operator = null
            values   = []
          }]
          match_labels = {}
        }]
      }]
      ports = [{
        port     = null
        protocol = null
      }]
    }]
    pod_selector = [{
      match_expressions = [{
        key      = null
        operator = null
        values   = []
      }]
      match_labels = {}
    }]
    policy_types = []
  }]
}
