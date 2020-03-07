variable "allow_volume_expansion" {
  description = "(optional) - Indicates whether the storage class allow volume expand"
  type        = bool
  default     = null
}

variable "mount_options" {
  description = "(optional) - Persistent Volumes that are dynamically created by a storage class will have the mount options specified"
  type        = set(string)
  default     = null
}

variable "parameters" {
  description = "(optional) - The parameters for the provisioner that should create volumes of this storage class"
  type        = map(string)
  default     = null
}

variable "reclaim_policy" {
  description = "(optional) - Indicates the type of the reclaim policy"
  type        = string
  default     = null
}

variable "storage_provisioner" {
  description = "(required) - Indicates the type of the provisioner"
  type        = string
}

variable "volume_binding_mode" {
  description = "(optional) - Indicates when volume binding and dynamic provisioning should occur"
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
      resource_version = string
      self_link        = string
      uid              = string
    }
  ))
}

