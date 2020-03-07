variable "metadata" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      annotations      = map(string)
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

variable "role_ref" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      api_group = string
      kind      = string
      name      = string
    }
  ))
}

variable "subject" {
  description = "nested mode: NestingList, min items: 1, max items: 0"
  type = set(object(
    {
      api_group = string
      kind      = string
      name      = string
      namespace = string
    }
  ))
}

