# Kubernetes Provider

```terraform
provider "kubernetes" {
  version = "1.11.1"

  client_certificate       = null
  client_key               = null
  cluster_ca_certificate   = null
  config_context           = null
  config_context_auth_info = null
  config_context_cluster   = null
  config_path              = null
  host                     = null
  insecure                 = null
  load_config_file         = null
  password                 = null
  token                    = null
  username                 = null

  exec = [{
    api_version = null
    args        = []
    command     = null
    env         = {}
  }]
}
```
