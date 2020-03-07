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

variable "subset" {
  description = "nested mode: NestingSet, min items: 0, max items: 0"
  type = set(object(
    {
      address = set(object(
        {
          hostname  = string
          ip        = string
          node_name = string
        }
      ))
      not_ready_address = set(object(
        {
          hostname  = string
          ip        = string
          node_name = string
        }
      ))
      port = set(object(
        {
          name     = string
          port     = number
          protocol = string
        }
      ))
    }
  ))
  default = []
}

