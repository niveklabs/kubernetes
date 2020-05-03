module "kubernetes_pod" {
  source = "./modules/kubernetes/r/kubernetes_pod"


  metadata = [{
    annotations      = {}
    generate_name    = null
    generation       = null
    labels           = {}
    name             = null
    namespace        = null
    resource_version = null
    self_link        = null
    uid              = null
  }]

  spec = [{
    active_deadline_seconds = null
    affinity = [{
      node_affinity = [{
        preferred_during_scheduling_ignored_during_execution = [{
          preference = [{
            match_expressions = [{
              key      = null
              operator = null
              values   = []
            }]
          }]
          weight = null
        }]
        required_during_scheduling_ignored_during_execution = [{
          node_selector_term = [{
            match_expressions = [{
              key      = null
              operator = null
              values   = []
            }]
          }]
        }]
      }]
      pod_affinity = [{
        preferred_during_scheduling_ignored_during_execution = [{
          pod_affinity_term = [{
            label_selector = [{
              match_expressions = [{
                key      = null
                operator = null
                values   = []
              }]
              match_labels = {}
            }]
            namespaces   = []
            topology_key = null
          }]
          weight = null
        }]
        required_during_scheduling_ignored_during_execution = [{
          label_selector = [{
            match_expressions = [{
              key      = null
              operator = null
              values   = []
            }]
            match_labels = {}
          }]
          namespaces   = []
          topology_key = null
        }]
      }]
      pod_anti_affinity = [{
        preferred_during_scheduling_ignored_during_execution = [{
          pod_affinity_term = [{
            label_selector = [{
              match_expressions = [{
                key      = null
                operator = null
                values   = []
              }]
              match_labels = {}
            }]
            namespaces   = []
            topology_key = null
          }]
          weight = null
        }]
        required_during_scheduling_ignored_during_execution = [{
          label_selector = [{
            match_expressions = [{
              key      = null
              operator = null
              values   = []
            }]
            match_labels = {}
          }]
          namespaces   = []
          topology_key = null
        }]
      }]
    }]
    automount_service_account_token = null
    container = [{
      args    = []
      command = []
      env = [{
        name  = null
        value = null
        value_from = [{
          config_map_key_ref = [{
            key  = null
            name = null
          }]
          field_ref = [{
            api_version = null
            field_path  = null
          }]
          resource_field_ref = [{
            container_name = null
            resource       = null
          }]
          secret_key_ref = [{
            key  = null
            name = null
          }]
        }]
      }]
      env_from = [{
        config_map_ref = [{
          name     = null
          optional = null
        }]
        prefix = null
        secret_ref = [{
          name     = null
          optional = null
        }]
      }]
      image             = null
      image_pull_policy = null
      lifecycle = [{
        post_start = [{
          exec = [{
            command = []
          }]
          http_get = [{
            host = null
            http_header = [{
              name  = null
              value = null
            }]
            path   = null
            port   = null
            scheme = null
          }]
          tcp_socket = [{
            port = null
          }]
        }]
        pre_stop = [{
          exec = [{
            command = []
          }]
          http_get = [{
            host = null
            http_header = [{
              name  = null
              value = null
            }]
            path   = null
            port   = null
            scheme = null
          }]
          tcp_socket = [{
            port = null
          }]
        }]
      }]
      liveness_probe = [{
        exec = [{
          command = []
        }]
        failure_threshold = null
        http_get = [{
          host = null
          http_header = [{
            name  = null
            value = null
          }]
          path   = null
          port   = null
          scheme = null
        }]
        initial_delay_seconds = null
        period_seconds        = null
        success_threshold     = null
        tcp_socket = [{
          port = null
        }]
        timeout_seconds = null
      }]
      name = null
      port = [{
        container_port = null
        host_ip        = null
        host_port      = null
        name           = null
        protocol       = null
      }]
      readiness_probe = [{
        exec = [{
          command = []
        }]
        failure_threshold = null
        http_get = [{
          host = null
          http_header = [{
            name  = null
            value = null
          }]
          path   = null
          port   = null
          scheme = null
        }]
        initial_delay_seconds = null
        period_seconds        = null
        success_threshold     = null
        tcp_socket = [{
          port = null
        }]
        timeout_seconds = null
      }]
      resources = [{
        limits = [{
          cpu    = null
          memory = null
        }]
        requests = [{
          cpu    = null
          memory = null
        }]
      }]
      security_context = [{
        allow_privilege_escalation = null
        capabilities = [{
          add  = []
          drop = []
        }]
        privileged                = null
        read_only_root_filesystem = null
        run_as_group              = null
        run_as_non_root           = null
        run_as_user               = null
        se_linux_options = [{
          level = null
          role  = null
          type  = null
          user  = null
        }]
      }]
      startup_probe = [{
        exec = [{
          command = []
        }]
        failure_threshold = null
        http_get = [{
          host = null
          http_header = [{
            name  = null
            value = null
          }]
          path   = null
          port   = null
          scheme = null
        }]
        initial_delay_seconds = null
        period_seconds        = null
        success_threshold     = null
        tcp_socket = [{
          port = null
        }]
        timeout_seconds = null
      }]
      stdin                    = null
      stdin_once               = null
      termination_message_path = null
      tty                      = null
      volume_mount = [{
        mount_path        = null
        mount_propagation = null
        name              = null
        read_only         = null
        sub_path          = null
      }]
      working_dir = null
    }]
    dns_config = [{
      nameservers = []
      option = [{
        name  = null
        value = null
      }]
      searches = []
    }]
    dns_policy = null
    host_aliases = [{
      hostnames = []
      ip        = null
    }]
    host_ipc     = null
    host_network = null
    host_pid     = null
    hostname     = null
    image_pull_secrets = [{
      name = null
    }]
    init_container = [{
      args    = []
      command = []
      env = [{
        name  = null
        value = null
        value_from = [{
          config_map_key_ref = [{
            key  = null
            name = null
          }]
          field_ref = [{
            api_version = null
            field_path  = null
          }]
          resource_field_ref = [{
            container_name = null
            resource       = null
          }]
          secret_key_ref = [{
            key  = null
            name = null
          }]
        }]
      }]
      env_from = [{
        config_map_ref = [{
          name     = null
          optional = null
        }]
        prefix = null
        secret_ref = [{
          name     = null
          optional = null
        }]
      }]
      image             = null
      image_pull_policy = null
      lifecycle = [{
        post_start = [{
          exec = [{
            command = []
          }]
          http_get = [{
            host = null
            http_header = [{
              name  = null
              value = null
            }]
            path   = null
            port   = null
            scheme = null
          }]
          tcp_socket = [{
            port = null
          }]
        }]
        pre_stop = [{
          exec = [{
            command = []
          }]
          http_get = [{
            host = null
            http_header = [{
              name  = null
              value = null
            }]
            path   = null
            port   = null
            scheme = null
          }]
          tcp_socket = [{
            port = null
          }]
        }]
      }]
      liveness_probe = [{
        exec = [{
          command = []
        }]
        failure_threshold = null
        http_get = [{
          host = null
          http_header = [{
            name  = null
            value = null
          }]
          path   = null
          port   = null
          scheme = null
        }]
        initial_delay_seconds = null
        period_seconds        = null
        success_threshold     = null
        tcp_socket = [{
          port = null
        }]
        timeout_seconds = null
      }]
      name = null
      port = [{
        container_port = null
        host_ip        = null
        host_port      = null
        name           = null
        protocol       = null
      }]
      readiness_probe = [{
        exec = [{
          command = []
        }]
        failure_threshold = null
        http_get = [{
          host = null
          http_header = [{
            name  = null
            value = null
          }]
          path   = null
          port   = null
          scheme = null
        }]
        initial_delay_seconds = null
        period_seconds        = null
        success_threshold     = null
        tcp_socket = [{
          port = null
        }]
        timeout_seconds = null
      }]
      resources = [{
        limits = [{
          cpu    = null
          memory = null
        }]
        requests = [{
          cpu    = null
          memory = null
        }]
      }]
      security_context = [{
        allow_privilege_escalation = null
        capabilities = [{
          add  = []
          drop = []
        }]
        privileged                = null
        read_only_root_filesystem = null
        run_as_group              = null
        run_as_non_root           = null
        run_as_user               = null
        se_linux_options = [{
          level = null
          role  = null
          type  = null
          user  = null
        }]
      }]
      startup_probe = [{
        exec = [{
          command = []
        }]
        failure_threshold = null
        http_get = [{
          host = null
          http_header = [{
            name  = null
            value = null
          }]
          path   = null
          port   = null
          scheme = null
        }]
        initial_delay_seconds = null
        period_seconds        = null
        success_threshold     = null
        tcp_socket = [{
          port = null
        }]
        timeout_seconds = null
      }]
      stdin                    = null
      stdin_once               = null
      termination_message_path = null
      tty                      = null
      volume_mount = [{
        mount_path        = null
        mount_propagation = null
        name              = null
        read_only         = null
        sub_path          = null
      }]
      working_dir = null
    }]
    node_name           = null
    node_selector       = {}
    priority_class_name = null
    restart_policy      = null
    security_context = [{
      fs_group        = null
      run_as_group    = null
      run_as_non_root = null
      run_as_user     = null
      se_linux_options = [{
        level = null
        role  = null
        type  = null
        user  = null
      }]
      supplemental_groups = []
    }]
    service_account_name             = null
    share_process_namespace          = null
    subdomain                        = null
    termination_grace_period_seconds = null
    toleration = [{
      effect             = null
      key                = null
      operator           = null
      toleration_seconds = null
      value              = null
    }]
    volume = [{
      aws_elastic_block_store = [{
        fs_type   = null
        partition = null
        read_only = null
        volume_id = null
      }]
      azure_disk = [{
        caching_mode  = null
        data_disk_uri = null
        disk_name     = null
        fs_type       = null
        read_only     = null
      }]
      azure_file = [{
        read_only   = null
        secret_name = null
        share_name  = null
      }]
      ceph_fs = [{
        monitors    = []
        path        = null
        read_only   = null
        secret_file = null
        secret_ref = [{
          name = null
        }]
        user = null
      }]
      cinder = [{
        fs_type   = null
        read_only = null
        volume_id = null
      }]
      config_map = [{
        default_mode = null
        items = [{
          key  = null
          mode = null
          path = null
        }]
        name = null
      }]
      downward_api = [{
        default_mode = null
        items = [{
          field_ref = [{
            api_version = null
            field_path  = null
          }]
          mode = null
          path = null
          resource_field_ref = [{
            container_name = null
            quantity       = null
            resource       = null
          }]
        }]
      }]
      empty_dir = [{
        medium = null
      }]
      fc = [{
        fs_type      = null
        lun          = null
        read_only    = null
        target_ww_ns = []
      }]
      flex_volume = [{
        driver    = null
        fs_type   = null
        options   = {}
        read_only = null
        secret_ref = [{
          name = null
        }]
      }]
      flocker = [{
        dataset_name = null
        dataset_uuid = null
      }]
      gce_persistent_disk = [{
        fs_type   = null
        partition = null
        pd_name   = null
        read_only = null
      }]
      git_repo = [{
        directory  = null
        repository = null
        revision   = null
      }]
      glusterfs = [{
        endpoints_name = null
        path           = null
        read_only      = null
      }]
      host_path = [{
        path = null
        type = null
      }]
      iscsi = [{
        fs_type         = null
        iqn             = null
        iscsi_interface = null
        lun             = null
        read_only       = null
        target_portal   = null
      }]
      local = [{
        path = null
      }]
      name = null
      nfs = [{
        path      = null
        read_only = null
        server    = null
      }]
      persistent_volume_claim = [{
        claim_name = null
        read_only  = null
      }]
      photon_persistent_disk = [{
        fs_type = null
        pd_id   = null
      }]
      quobyte = [{
        group     = null
        read_only = null
        registry  = null
        user      = null
        volume    = null
      }]
      rbd = [{
        ceph_monitors = []
        fs_type       = null
        keyring       = null
        rados_user    = null
        rbd_image     = null
        rbd_pool      = null
        read_only     = null
        secret_ref = [{
          name = null
        }]
      }]
      secret = [{
        default_mode = null
        items = [{
          key  = null
          mode = null
          path = null
        }]
        optional    = null
        secret_name = null
      }]
      vsphere_volume = [{
        fs_type     = null
        volume_path = null
      }]
    }]
  }]

  timeouts = [{
    create = null
    delete = null
  }]
}
