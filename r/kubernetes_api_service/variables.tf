variable "metadata" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      annotations      = map(string)
      generate_name    = string
      generation       = number
      labels           = map(string)
      name             = string
      resource_version = string
      self_link        = string
      uid              = string
    }
  ))
}

variable "spec" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      ca_bundle                = string
      group                    = string
      group_priority_minimum   = number
      insecure_skip_tls_verify = bool
      service = list(object(
        {
          name      = string
          namespace = string
          port      = number
        }
      ))
      version          = string
      version_priority = number
    }
  ))
}

