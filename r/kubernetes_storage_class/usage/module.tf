module "kubernetes_storage_class" {
  source = "./modules/kubernetes/r/kubernetes_storage_class"

  allow_volume_expansion = null
  mount_options          = []
  parameters             = {}
  reclaim_policy         = null
  storage_provisioner    = null
  volume_binding_mode    = null

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
