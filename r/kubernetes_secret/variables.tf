variable "data" {
  description = "(optional) - A map of the secret data."
  type        = map(string)
  default     = null
}

variable "type" {
  description = "(optional) - Type of secret"
  type        = string
  default     = null
}

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

