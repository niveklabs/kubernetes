variable "description" {
  description = "(optional) - An arbitrary string that usually provides guidelines on when this priority class should be used."
  type        = string
  default     = null
}

variable "global_default" {
  description = "(optional) - Specifies whether this PriorityClass should be considered as the default priority for pods that do not have any priority class. Only one PriorityClass can be marked as `globalDefault`. However, if more than one PriorityClasses exists with their `globalDefault` field set to true, the smallest value of such global default PriorityClasses will be used as the default priority."
  type        = bool
  default     = null
}

variable "value" {
  description = "(required) - The value of this priority class. This is the actual priority that pods receive when they have the name of this class in their pod spec."
  type        = number
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
      resource_version = string
      self_link        = string
      uid              = string
    }
  ))
}

