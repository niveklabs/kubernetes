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

variable "rule" {
  description = "nested mode: NestingList, min items: 1, max items: 0"
  type = set(object(
    {
      api_groups     = set(string)
      resource_names = set(string)
      resources      = set(string)
      verbs          = set(string)
    }
  ))
}

