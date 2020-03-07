variable "metadata" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      annotations      = map(string)
      generation       = number
      labels           = map(string)
      name             = string
      resource_version = string
      self_link        = string
      uid              = string
    }
  ))
}

variable "spec" {
  description = "nested mode: NestingList, min items: 1, max items: 0"
  type = set(object(
    {
      access_modes  = set(string)
      capacity      = map(string)
      mount_options = set(string)
      node_affinity = list(object(
        {
          required = list(object(
            {
              node_selector_term = list(object(
                {
                  match_expressions = list(object(
                    {
                      key      = string
                      operator = string
                      values   = set(string)
                    }
                  ))
                  match_fields = list(object(
                    {
                      key      = string
                      operator = string
                      values   = set(string)
                    }
                  ))
                }
              ))
            }
          ))
        }
      ))
      persistent_volume_reclaim_policy = string
      persistent_volume_source = list(object(
        {
          aws_elastic_block_store = list(object(
            {
              fs_type   = string
              partition = number
              read_only = bool
              volume_id = string
            }
          ))
          azure_disk = list(object(
            {
              caching_mode  = string
              data_disk_uri = string
              disk_name     = string
              fs_type       = string
              read_only     = bool
            }
          ))
          azure_file = list(object(
            {
              read_only   = bool
              secret_name = string
              share_name  = string
            }
          ))
          ceph_fs = list(object(
            {
              monitors    = set(string)
              path        = string
              read_only   = bool
              secret_file = string
              secret_ref = list(object(
                {
                  name = string
                }
              ))
              user = string
            }
          ))
          cinder = list(object(
            {
              fs_type   = string
              read_only = bool
              volume_id = string
            }
          ))
          fc = list(object(
            {
              fs_type      = string
              lun          = number
              read_only    = bool
              target_ww_ns = set(string)
            }
          ))
          flex_volume = list(object(
            {
              driver    = string
              fs_type   = string
              options   = map(string)
              read_only = bool
              secret_ref = list(object(
                {
                  name = string
                }
              ))
            }
          ))
          flocker = list(object(
            {
              dataset_name = string
              dataset_uuid = string
            }
          ))
          gce_persistent_disk = list(object(
            {
              fs_type   = string
              partition = number
              pd_name   = string
              read_only = bool
            }
          ))
          glusterfs = list(object(
            {
              endpoints_name = string
              path           = string
              read_only      = bool
            }
          ))
          host_path = list(object(
            {
              path = string
              type = string
            }
          ))
          iscsi = list(object(
            {
              fs_type         = string
              iqn             = string
              iscsi_interface = string
              lun             = number
              read_only       = bool
              target_portal   = string
            }
          ))
          local = list(object(
            {
              path = string
            }
          ))
          nfs = list(object(
            {
              path      = string
              read_only = bool
              server    = string
            }
          ))
          photon_persistent_disk = list(object(
            {
              fs_type = string
              pd_id   = string
            }
          ))
          quobyte = list(object(
            {
              group     = string
              read_only = bool
              registry  = string
              user      = string
              volume    = string
            }
          ))
          rbd = list(object(
            {
              ceph_monitors = set(string)
              fs_type       = string
              keyring       = string
              rados_user    = string
              rbd_image     = string
              rbd_pool      = string
              read_only     = bool
              secret_ref = list(object(
                {
                  name = string
                }
              ))
            }
          ))
          vsphere_volume = list(object(
            {
              fs_type     = string
              volume_path = string
            }
          ))
        }
      ))
      storage_class_name = string
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

