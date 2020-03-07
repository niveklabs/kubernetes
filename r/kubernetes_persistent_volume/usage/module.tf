module "kubernetes_persistent_volume" {
  source = "./kubernetes/r/kubernetes_persistent_volume"


  metadata = [{
    annotations      = {}
    generation       = null
    labels           = {}
    name             = null
    resource_version = null
    self_link        = null
    uid              = null
  }]

  spec = [{
    access_modes  = []
    capacity      = {}
    mount_options = []
    node_affinity = [{
      required = [{
        node_selector_term = [{
          match_expressions = [{
            key      = null
            operator = null
            values   = []
          }]
          match_fields = [{
            key      = null
            operator = null
            values   = []
          }]
        }]
      }]
    }]
    persistent_volume_reclaim_policy = null
    persistent_volume_source = [{
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
      nfs = [{
        path      = null
        read_only = null
        server    = null
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
      vsphere_volume = [{
        fs_type     = null
        volume_path = null
      }]
    }]
    storage_class_name = null
  }]

  timeouts = [{
    create = null
  }]
}
