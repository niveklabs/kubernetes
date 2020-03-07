module "kubernetes_service_account" {
  source = "./kubernetes/r/kubernetes_service_account"

  automount_service_account_token = null

  image_pull_secret = [{
    name = null
  }]

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

  secret = [{
    name = null
  }]

  timeouts = [{
    create = null
  }]
}
