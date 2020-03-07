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
      egress = list(object(
        {
          ports = list(object(
            {
              port     = string
              protocol = string
            }
          ))
          to = list(object(
            {
              ip_block = list(object(
                {
                  cidr   = string
                  except = list(string)
                }
              ))
              namespace_selector = list(object(
                {
                  match_expressions = list(object(
                    {
                      key      = string
                      operator = string
                      values   = set(string)
                    }
                  ))
                  match_labels = map(string)
                }
              ))
              pod_selector = list(object(
                {
                  match_expressions = list(object(
                    {
                      key      = string
                      operator = string
                      values   = set(string)
                    }
                  ))
                  match_labels = map(string)
                }
              ))
            }
          ))
        }
      ))
      ingress = list(object(
        {
          from = list(object(
            {
              ip_block = list(object(
                {
                  cidr   = string
                  except = list(string)
                }
              ))
              namespace_selector = list(object(
                {
                  match_expressions = list(object(
                    {
                      key      = string
                      operator = string
                      values   = set(string)
                    }
                  ))
                  match_labels = map(string)
                }
              ))
              pod_selector = list(object(
                {
                  match_expressions = list(object(
                    {
                      key      = string
                      operator = string
                      values   = set(string)
                    }
                  ))
                  match_labels = map(string)
                }
              ))
            }
          ))
          ports = list(object(
            {
              port     = string
              protocol = string
            }
          ))
        }
      ))
      pod_selector = list(object(
        {
          match_expressions = list(object(
            {
              key      = string
              operator = string
              values   = set(string)
            }
          ))
          match_labels = map(string)
        }
      ))
      policy_types = list(string)
    }
  ))
}

