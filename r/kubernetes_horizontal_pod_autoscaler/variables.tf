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
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      max_replicas = number
      min_replicas = number
      scale_target_ref = list(object(
        {
          api_version = string
          kind        = string
          name        = string
        }
      ))
      target_cpu_utilization_percentage = number
    }
  ))
}

