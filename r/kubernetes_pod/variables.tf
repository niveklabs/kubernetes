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
      active_deadline_seconds = number
      affinity = list(object(
        {
          node_affinity = list(object(
            {
              preferred_during_scheduling_ignored_during_execution = list(object(
                {
                  preference = list(object(
                    {
                      match_expressions = list(object(
                        {
                          key      = string
                          operator = string
                          values   = set(string)
                        }
                      ))
                    }
                  ))
                  weight = number
                }
              ))
              required_during_scheduling_ignored_during_execution = list(object(
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
                    }
                  ))
                }
              ))
            }
          ))
          pod_affinity = list(object(
            {
              preferred_during_scheduling_ignored_during_execution = list(object(
                {
                  pod_affinity_term = list(object(
                    {
                      label_selector = list(object(
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
                      namespaces   = set(string)
                      topology_key = string
                    }
                  ))
                  weight = number
                }
              ))
              required_during_scheduling_ignored_during_execution = list(object(
                {
                  label_selector = list(object(
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
                  namespaces   = set(string)
                  topology_key = string
                }
              ))
            }
          ))
          pod_anti_affinity = list(object(
            {
              preferred_during_scheduling_ignored_during_execution = list(object(
                {
                  pod_affinity_term = list(object(
                    {
                      label_selector = list(object(
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
                      namespaces   = set(string)
                      topology_key = string
                    }
                  ))
                  weight = number
                }
              ))
              required_during_scheduling_ignored_during_execution = list(object(
                {
                  label_selector = list(object(
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
                  namespaces   = set(string)
                  topology_key = string
                }
              ))
            }
          ))
        }
      ))
      automount_service_account_token = bool
      container = list(object(
        {
          args    = list(string)
          command = list(string)
          env = list(object(
            {
              name  = string
              value = string
              value_from = list(object(
                {
                  config_map_key_ref = list(object(
                    {
                      key  = string
                      name = string
                    }
                  ))
                  field_ref = list(object(
                    {
                      api_version = string
                      field_path  = string
                    }
                  ))
                  resource_field_ref = list(object(
                    {
                      container_name = string
                      resource       = string
                    }
                  ))
                  secret_key_ref = list(object(
                    {
                      key  = string
                      name = string
                    }
                  ))
                }
              ))
            }
          ))
          env_from = list(object(
            {
              config_map_ref = list(object(
                {
                  name     = string
                  optional = bool
                }
              ))
              prefix = string
              secret_ref = list(object(
                {
                  name     = string
                  optional = bool
                }
              ))
            }
          ))
          image             = string
          image_pull_policy = string
          lifecycle = list(object(
            {
              post_start = list(object(
                {
                  exec = list(object(
                    {
                      command = list(string)
                    }
                  ))
                  http_get = list(object(
                    {
                      host = string
                      http_header = list(object(
                        {
                          name  = string
                          value = string
                        }
                      ))
                      path   = string
                      port   = string
                      scheme = string
                    }
                  ))
                  tcp_socket = list(object(
                    {
                      port = string
                    }
                  ))
                }
              ))
              pre_stop = list(object(
                {
                  exec = list(object(
                    {
                      command = list(string)
                    }
                  ))
                  http_get = list(object(
                    {
                      host = string
                      http_header = list(object(
                        {
                          name  = string
                          value = string
                        }
                      ))
                      path   = string
                      port   = string
                      scheme = string
                    }
                  ))
                  tcp_socket = list(object(
                    {
                      port = string
                    }
                  ))
                }
              ))
            }
          ))
          liveness_probe = list(object(
            {
              exec = list(object(
                {
                  command = list(string)
                }
              ))
              failure_threshold = number
              http_get = list(object(
                {
                  host = string
                  http_header = list(object(
                    {
                      name  = string
                      value = string
                    }
                  ))
                  path   = string
                  port   = string
                  scheme = string
                }
              ))
              initial_delay_seconds = number
              period_seconds        = number
              success_threshold     = number
              tcp_socket = list(object(
                {
                  port = string
                }
              ))
              timeout_seconds = number
            }
          ))
          name = string
          port = list(object(
            {
              container_port = number
              host_ip        = string
              host_port      = number
              name           = string
              protocol       = string
            }
          ))
          readiness_probe = list(object(
            {
              exec = list(object(
                {
                  command = list(string)
                }
              ))
              failure_threshold = number
              http_get = list(object(
                {
                  host = string
                  http_header = list(object(
                    {
                      name  = string
                      value = string
                    }
                  ))
                  path   = string
                  port   = string
                  scheme = string
                }
              ))
              initial_delay_seconds = number
              period_seconds        = number
              success_threshold     = number
              tcp_socket = list(object(
                {
                  port = string
                }
              ))
              timeout_seconds = number
            }
          ))
          resources = list(object(
            {
              limits = list(object(
                {
                  cpu    = string
                  memory = string
                }
              ))
              requests = list(object(
                {
                  cpu    = string
                  memory = string
                }
              ))
            }
          ))
          security_context = list(object(
            {
              allow_privilege_escalation = bool
              capabilities = list(object(
                {
                  add  = list(string)
                  drop = list(string)
                }
              ))
              privileged                = bool
              read_only_root_filesystem = bool
              run_as_group              = number
              run_as_non_root           = bool
              run_as_user               = number
              se_linux_options = list(object(
                {
                  level = string
                  role  = string
                  type  = string
                  user  = string
                }
              ))
            }
          ))
          startup_probe = list(object(
            {
              exec = list(object(
                {
                  command = list(string)
                }
              ))
              failure_threshold = number
              http_get = list(object(
                {
                  host = string
                  http_header = list(object(
                    {
                      name  = string
                      value = string
                    }
                  ))
                  path   = string
                  port   = string
                  scheme = string
                }
              ))
              initial_delay_seconds = number
              period_seconds        = number
              success_threshold     = number
              tcp_socket = list(object(
                {
                  port = string
                }
              ))
              timeout_seconds = number
            }
          ))
          stdin                    = bool
          stdin_once               = bool
          termination_message_path = string
          tty                      = bool
          volume_mount = list(object(
            {
              mount_path        = string
              mount_propagation = string
              name              = string
              read_only         = bool
              sub_path          = string
            }
          ))
          working_dir = string
        }
      ))
      dns_config = list(object(
        {
          nameservers = list(string)
          option = list(object(
            {
              name  = string
              value = string
            }
          ))
          searches = list(string)
        }
      ))
      dns_policy = string
      host_aliases = list(object(
        {
          hostnames = list(string)
          ip        = string
        }
      ))
      host_ipc     = bool
      host_network = bool
      host_pid     = bool
      hostname     = string
      image_pull_secrets = list(object(
        {
          name = string
        }
      ))
      init_container = list(object(
        {
          args    = list(string)
          command = list(string)
          env = list(object(
            {
              name  = string
              value = string
              value_from = list(object(
                {
                  config_map_key_ref = list(object(
                    {
                      key  = string
                      name = string
                    }
                  ))
                  field_ref = list(object(
                    {
                      api_version = string
                      field_path  = string
                    }
                  ))
                  resource_field_ref = list(object(
                    {
                      container_name = string
                      resource       = string
                    }
                  ))
                  secret_key_ref = list(object(
                    {
                      key  = string
                      name = string
                    }
                  ))
                }
              ))
            }
          ))
          env_from = list(object(
            {
              config_map_ref = list(object(
                {
                  name     = string
                  optional = bool
                }
              ))
              prefix = string
              secret_ref = list(object(
                {
                  name     = string
                  optional = bool
                }
              ))
            }
          ))
          image             = string
          image_pull_policy = string
          lifecycle = list(object(
            {
              post_start = list(object(
                {
                  exec = list(object(
                    {
                      command = list(string)
                    }
                  ))
                  http_get = list(object(
                    {
                      host = string
                      http_header = list(object(
                        {
                          name  = string
                          value = string
                        }
                      ))
                      path   = string
                      port   = string
                      scheme = string
                    }
                  ))
                  tcp_socket = list(object(
                    {
                      port = string
                    }
                  ))
                }
              ))
              pre_stop = list(object(
                {
                  exec = list(object(
                    {
                      command = list(string)
                    }
                  ))
                  http_get = list(object(
                    {
                      host = string
                      http_header = list(object(
                        {
                          name  = string
                          value = string
                        }
                      ))
                      path   = string
                      port   = string
                      scheme = string
                    }
                  ))
                  tcp_socket = list(object(
                    {
                      port = string
                    }
                  ))
                }
              ))
            }
          ))
          liveness_probe = list(object(
            {
              exec = list(object(
                {
                  command = list(string)
                }
              ))
              failure_threshold = number
              http_get = list(object(
                {
                  host = string
                  http_header = list(object(
                    {
                      name  = string
                      value = string
                    }
                  ))
                  path   = string
                  port   = string
                  scheme = string
                }
              ))
              initial_delay_seconds = number
              period_seconds        = number
              success_threshold     = number
              tcp_socket = list(object(
                {
                  port = string
                }
              ))
              timeout_seconds = number
            }
          ))
          name = string
          port = list(object(
            {
              container_port = number
              host_ip        = string
              host_port      = number
              name           = string
              protocol       = string
            }
          ))
          readiness_probe = list(object(
            {
              exec = list(object(
                {
                  command = list(string)
                }
              ))
              failure_threshold = number
              http_get = list(object(
                {
                  host = string
                  http_header = list(object(
                    {
                      name  = string
                      value = string
                    }
                  ))
                  path   = string
                  port   = string
                  scheme = string
                }
              ))
              initial_delay_seconds = number
              period_seconds        = number
              success_threshold     = number
              tcp_socket = list(object(
                {
                  port = string
                }
              ))
              timeout_seconds = number
            }
          ))
          resources = list(object(
            {
              limits = list(object(
                {
                  cpu    = string
                  memory = string
                }
              ))
              requests = list(object(
                {
                  cpu    = string
                  memory = string
                }
              ))
            }
          ))
          security_context = list(object(
            {
              allow_privilege_escalation = bool
              capabilities = list(object(
                {
                  add  = list(string)
                  drop = list(string)
                }
              ))
              privileged                = bool
              read_only_root_filesystem = bool
              run_as_group              = number
              run_as_non_root           = bool
              run_as_user               = number
              se_linux_options = list(object(
                {
                  level = string
                  role  = string
                  type  = string
                  user  = string
                }
              ))
            }
          ))
          startup_probe = list(object(
            {
              exec = list(object(
                {
                  command = list(string)
                }
              ))
              failure_threshold = number
              http_get = list(object(
                {
                  host = string
                  http_header = list(object(
                    {
                      name  = string
                      value = string
                    }
                  ))
                  path   = string
                  port   = string
                  scheme = string
                }
              ))
              initial_delay_seconds = number
              period_seconds        = number
              success_threshold     = number
              tcp_socket = list(object(
                {
                  port = string
                }
              ))
              timeout_seconds = number
            }
          ))
          stdin                    = bool
          stdin_once               = bool
          termination_message_path = string
          tty                      = bool
          volume_mount = list(object(
            {
              mount_path        = string
              mount_propagation = string
              name              = string
              read_only         = bool
              sub_path          = string
            }
          ))
          working_dir = string
        }
      ))
      node_name           = string
      node_selector       = map(string)
      priority_class_name = string
      restart_policy      = string
      security_context = list(object(
        {
          fs_group        = number
          run_as_group    = number
          run_as_non_root = bool
          run_as_user     = number
          se_linux_options = list(object(
            {
              level = string
              role  = string
              type  = string
              user  = string
            }
          ))
          supplemental_groups = set(number)
        }
      ))
      service_account_name             = string
      share_process_namespace          = bool
      subdomain                        = string
      termination_grace_period_seconds = number
      toleration = list(object(
        {
          effect             = string
          key                = string
          operator           = string
          toleration_seconds = string
          value              = string
        }
      ))
      volume = list(object(
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
          config_map = list(object(
            {
              default_mode = string
              items = list(object(
                {
                  key  = string
                  mode = string
                  path = string
                }
              ))
              name = string
            }
          ))
          downward_api = list(object(
            {
              default_mode = string
              items = list(object(
                {
                  field_ref = list(object(
                    {
                      api_version = string
                      field_path  = string
                    }
                  ))
                  mode = string
                  path = string
                  resource_field_ref = list(object(
                    {
                      container_name = string
                      quantity       = string
                      resource       = string
                    }
                  ))
                }
              ))
            }
          ))
          empty_dir = list(object(
            {
              medium = string
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
          git_repo = list(object(
            {
              directory  = string
              repository = string
              revision   = string
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
          name = string
          nfs = list(object(
            {
              path      = string
              read_only = bool
              server    = string
            }
          ))
          persistent_volume_claim = list(object(
            {
              claim_name = string
              read_only  = bool
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
          secret = list(object(
            {
              default_mode = string
              items = list(object(
                {
                  key  = string
                  mode = string
                  path = string
                }
              ))
              optional    = bool
              secret_name = string
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
    }
  ))
}

variable "timeouts" {
  description = "nested mode: NestingSingle, min items: 0, max items: 0"
  type = set(object(
    {
      create = string
      delete = string
    }
  ))
  default = []
}

