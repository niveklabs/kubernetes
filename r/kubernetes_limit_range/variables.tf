variable "metadata" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      annotations      = map(string)
      generate_name    = string
      generation       = number
      labels           = map(string)
      name             = string
      namespace        = string
      resource_version = string
      self_link        = string
      uid              = string
    }
  ))
}

variable "spec" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      limit = list(object(
        {
          default                 = map(string)
          default_request         = map(string)
          max                     = map(string)
          max_limit_request_ratio = map(string)
          min                     = map(string)
          type                    = string
        }
      ))
    }
  ))
  default = []
}

