module "kubernetes_priority_class" {
  source = "./kubernetes/r/kubernetes_priority_class"

  description    = null
  global_default = null
  value          = null

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
}
