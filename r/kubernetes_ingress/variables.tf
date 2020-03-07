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
      backend = list(object(
        {
          service_name = string
          service_port = string
        }
      ))
      rule = list(object(
        {
          host = string
          http = list(object(
            {
              path = list(object(
                {
                  backend = list(object(
                    {
                      service_name = string
                      service_port = string
                    }
                  ))
                  path = string
                }
              ))
            }
          ))
        }
      ))
      tls = list(object(
        {
          hosts       = list(string)
          secret_name = string
        }
      ))
    }
  ))
}

