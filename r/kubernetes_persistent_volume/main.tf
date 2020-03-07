terraform {
  required_providers {
    kubernetes = ">= 1.11.1"
  }
}

resource "kubernetes_persistent_volume" "this" {

  dynamic "metadata" {
    for_each = var.metadata
    content {
      annotations = metadata.value["annotations"]
      labels      = metadata.value["labels"]
      name        = metadata.value["name"]
    }
  }

  dynamic "spec" {
    for_each = var.spec
    content {
      access_modes                     = spec.value["access_modes"]
      capacity                         = spec.value["capacity"]
      mount_options                    = spec.value["mount_options"]
      persistent_volume_reclaim_policy = spec.value["persistent_volume_reclaim_policy"]
      storage_class_name               = spec.value["storage_class_name"]

      dynamic "node_affinity" {
        for_each = spec.value.node_affinity
        content {

          dynamic "required" {
            for_each = node_affinity.value.required
            content {

              dynamic "node_selector_term" {
                for_each = required.value.node_selector_term
                content {

                  dynamic "match_expressions" {
                    for_each = node_selector_term.value.match_expressions
                    content {
                      key      = match_expressions.value["key"]
                      operator = match_expressions.value["operator"]
                      values   = match_expressions.value["values"]
                    }
                  }

                  dynamic "match_fields" {
                    for_each = node_selector_term.value.match_fields
                    content {
                      key      = match_fields.value["key"]
                      operator = match_fields.value["operator"]
                      values   = match_fields.value["values"]
                    }
                  }

                }
              }

            }
          }

        }
      }

      dynamic "persistent_volume_source" {
        for_each = spec.value.persistent_volume_source
        content {

          dynamic "aws_elastic_block_store" {
            for_each = persistent_volume_source.value.aws_elastic_block_store
            content {
              fs_type   = aws_elastic_block_store.value["fs_type"]
              partition = aws_elastic_block_store.value["partition"]
              read_only = aws_elastic_block_store.value["read_only"]
              volume_id = aws_elastic_block_store.value["volume_id"]
            }
          }

          dynamic "azure_disk" {
            for_each = persistent_volume_source.value.azure_disk
            content {
              caching_mode  = azure_disk.value["caching_mode"]
              data_disk_uri = azure_disk.value["data_disk_uri"]
              disk_name     = azure_disk.value["disk_name"]
              fs_type       = azure_disk.value["fs_type"]
              read_only     = azure_disk.value["read_only"]
            }
          }

          dynamic "azure_file" {
            for_each = persistent_volume_source.value.azure_file
            content {
              read_only   = azure_file.value["read_only"]
              secret_name = azure_file.value["secret_name"]
              share_name  = azure_file.value["share_name"]
            }
          }

          dynamic "ceph_fs" {
            for_each = persistent_volume_source.value.ceph_fs
            content {
              monitors    = ceph_fs.value["monitors"]
              path        = ceph_fs.value["path"]
              read_only   = ceph_fs.value["read_only"]
              secret_file = ceph_fs.value["secret_file"]
              user        = ceph_fs.value["user"]

              dynamic "secret_ref" {
                for_each = ceph_fs.value.secret_ref
                content {
                  name = secret_ref.value["name"]
                }
              }

            }
          }

          dynamic "cinder" {
            for_each = persistent_volume_source.value.cinder
            content {
              fs_type   = cinder.value["fs_type"]
              read_only = cinder.value["read_only"]
              volume_id = cinder.value["volume_id"]
            }
          }

          dynamic "fc" {
            for_each = persistent_volume_source.value.fc
            content {
              fs_type      = fc.value["fs_type"]
              lun          = fc.value["lun"]
              read_only    = fc.value["read_only"]
              target_ww_ns = fc.value["target_ww_ns"]
            }
          }

          dynamic "flex_volume" {
            for_each = persistent_volume_source.value.flex_volume
            content {
              driver    = flex_volume.value["driver"]
              fs_type   = flex_volume.value["fs_type"]
              options   = flex_volume.value["options"]
              read_only = flex_volume.value["read_only"]

              dynamic "secret_ref" {
                for_each = flex_volume.value.secret_ref
                content {
                  name = secret_ref.value["name"]
                }
              }

            }
          }

          dynamic "flocker" {
            for_each = persistent_volume_source.value.flocker
            content {
              dataset_name = flocker.value["dataset_name"]
              dataset_uuid = flocker.value["dataset_uuid"]
            }
          }

          dynamic "gce_persistent_disk" {
            for_each = persistent_volume_source.value.gce_persistent_disk
            content {
              fs_type   = gce_persistent_disk.value["fs_type"]
              partition = gce_persistent_disk.value["partition"]
              pd_name   = gce_persistent_disk.value["pd_name"]
              read_only = gce_persistent_disk.value["read_only"]
            }
          }

          dynamic "glusterfs" {
            for_each = persistent_volume_source.value.glusterfs
            content {
              endpoints_name = glusterfs.value["endpoints_name"]
              path           = glusterfs.value["path"]
              read_only      = glusterfs.value["read_only"]
            }
          }

          dynamic "host_path" {
            for_each = persistent_volume_source.value.host_path
            content {
              path = host_path.value["path"]
              type = host_path.value["type"]
            }
          }

          dynamic "iscsi" {
            for_each = persistent_volume_source.value.iscsi
            content {
              fs_type         = iscsi.value["fs_type"]
              iqn             = iscsi.value["iqn"]
              iscsi_interface = iscsi.value["iscsi_interface"]
              lun             = iscsi.value["lun"]
              read_only       = iscsi.value["read_only"]
              target_portal   = iscsi.value["target_portal"]
            }
          }

          dynamic "local" {
            for_each = persistent_volume_source.value.local
            content {
              path = local.value["path"]
            }
          }

          dynamic "nfs" {
            for_each = persistent_volume_source.value.nfs
            content {
              path      = nfs.value["path"]
              read_only = nfs.value["read_only"]
              server    = nfs.value["server"]
            }
          }

          dynamic "photon_persistent_disk" {
            for_each = persistent_volume_source.value.photon_persistent_disk
            content {
              fs_type = photon_persistent_disk.value["fs_type"]
              pd_id   = photon_persistent_disk.value["pd_id"]
            }
          }

          dynamic "quobyte" {
            for_each = persistent_volume_source.value.quobyte
            content {
              group     = quobyte.value["group"]
              read_only = quobyte.value["read_only"]
              registry  = quobyte.value["registry"]
              user      = quobyte.value["user"]
              volume    = quobyte.value["volume"]
            }
          }

          dynamic "rbd" {
            for_each = persistent_volume_source.value.rbd
            content {
              ceph_monitors = rbd.value["ceph_monitors"]
              fs_type       = rbd.value["fs_type"]
              keyring       = rbd.value["keyring"]
              rados_user    = rbd.value["rados_user"]
              rbd_image     = rbd.value["rbd_image"]
              rbd_pool      = rbd.value["rbd_pool"]
              read_only     = rbd.value["read_only"]

              dynamic "secret_ref" {
                for_each = rbd.value.secret_ref
                content {
                  name = secret_ref.value["name"]
                }
              }

            }
          }

          dynamic "vsphere_volume" {
            for_each = persistent_volume_source.value.vsphere_volume
            content {
              fs_type     = vsphere_volume.value["fs_type"]
              volume_path = vsphere_volume.value["volume_path"]
            }
          }

        }
      }

    }
  }

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
    }
  }

}

