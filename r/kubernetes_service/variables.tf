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
      cluster_ip                  = string
      external_ips                = set(string)
      external_name               = string
      external_traffic_policy     = string
      load_balancer_ip            = string
      load_balancer_source_ranges = set(string)
      port = list(object(
        {
          name        = string
          node_port   = number
          port        = number
          protocol    = string
          target_port = string
        }
      ))
      publish_not_ready_addresses = bool
      selector                    = map(string)
      session_affinity            = string
      type                        = string
    }
  ))
}

variable "timeouts" {
  description = "nested mode: NestingSingle, min items: 0, max items: 0"
  type = set(object(
    {
      create = string
    }
  ))
  default = []
}

