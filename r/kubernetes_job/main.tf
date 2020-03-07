terraform {
  required_providers {
    kubernetes = ">= 1.11.1"
  }
}

resource "kubernetes_job" "this" {

  dynamic "metadata" {
    for_each = var.metadata
    content {
      annotations   = metadata.value["annotations"]
      generate_name = metadata.value["generate_name"]
      labels        = metadata.value["labels"]
      name          = metadata.value["name"]
      namespace     = metadata.value["namespace"]
    }
  }

  dynamic "spec" {
    for_each = var.spec
    content {
      active_deadline_seconds = spec.value["active_deadline_seconds"]
      backoff_limit           = spec.value["backoff_limit"]
      completions             = spec.value["completions"]
      manual_selector         = spec.value["manual_selector"]
      parallelism             = spec.value["parallelism"]

      dynamic "selector" {
        for_each = spec.value.selector
        content {
          match_labels = selector.value["match_labels"]

          dynamic "match_expressions" {
            for_each = selector.value.match_expressions
            content {
              key      = match_expressions.value["key"]
              operator = match_expressions.value["operator"]
              values   = match_expressions.value["values"]
            }
          }

        }
      }

      dynamic "template" {
        for_each = spec.value.template
        content {

          dynamic "metadata" {
            for_each = template.value.metadata
            content {
              annotations   = metadata.value["annotations"]
              generate_name = metadata.value["generate_name"]
              labels        = metadata.value["labels"]
              name          = metadata.value["name"]
            }
          }

          dynamic "spec" {
            for_each = template.value.spec
            content {
              active_deadline_seconds          = spec.value["active_deadline_seconds"]
              automount_service_account_token  = spec.value["automount_service_account_token"]
              dns_policy                       = spec.value["dns_policy"]
              host_ipc                         = spec.value["host_ipc"]
              host_network                     = spec.value["host_network"]
              host_pid                         = spec.value["host_pid"]
              hostname                         = spec.value["hostname"]
              node_name                        = spec.value["node_name"]
              node_selector                    = spec.value["node_selector"]
              priority_class_name              = spec.value["priority_class_name"]
              restart_policy                   = spec.value["restart_policy"]
              service_account_name             = spec.value["service_account_name"]
              share_process_namespace          = spec.value["share_process_namespace"]
              subdomain                        = spec.value["subdomain"]
              termination_grace_period_seconds = spec.value["termination_grace_period_seconds"]

              dynamic "affinity" {
                for_each = spec.value.affinity
                content {

                  dynamic "node_affinity" {
                    for_each = affinity.value.node_affinity
                    content {

                      dynamic "preferred_during_scheduling_ignored_during_execution" {
                        for_each = node_affinity.value.preferred_during_scheduling_ignored_during_execution
                        content {
                          weight = preferred_during_scheduling_ignored_during_execution.value["weight"]

                          dynamic "preference" {
                            for_each = preferred_during_scheduling_ignored_during_execution.value.preference
                            content {

                              dynamic "match_expressions" {
                                for_each = preference.value.match_expressions
                                content {
                                  key      = match_expressions.value["key"]
                                  operator = match_expressions.value["operator"]
                                  values   = match_expressions.value["values"]
                                }
                              }

                            }
                          }

                        }
                      }

                      dynamic "required_during_scheduling_ignored_during_execution" {
                        for_each = node_affinity.value.required_during_scheduling_ignored_during_execution
                        content {

                          dynamic "node_selector_term" {
                            for_each = required_during_scheduling_ignored_during_execution.value.node_selector_term
                            content {

                              dynamic "match_expressions" {
                                for_each = node_selector_term.value.match_expressions
                                content {
                                  key      = match_expressions.value["key"]
                                  operator = match_expressions.value["operator"]
                                  values   = match_expressions.value["values"]
                                }
                              }

                            }
                          }

                        }
                      }

                    }
                  }

                  dynamic "pod_affinity" {
                    for_each = affinity.value.pod_affinity
                    content {

                      dynamic "preferred_during_scheduling_ignored_during_execution" {
                        for_each = pod_affinity.value.preferred_during_scheduling_ignored_during_execution
                        content {
                          weight = preferred_during_scheduling_ignored_during_execution.value["weight"]

                          dynamic "pod_affinity_term" {
                            for_each = preferred_during_scheduling_ignored_during_execution.value.pod_affinity_term
                            content {
                              namespaces   = pod_affinity_term.value["namespaces"]
                              topology_key = pod_affinity_term.value["topology_key"]

                              dynamic "label_selector" {
                                for_each = pod_affinity_term.value.label_selector
                                content {
                                  match_labels = label_selector.value["match_labels"]

                                  dynamic "match_expressions" {
                                    for_each = label_selector.value.match_expressions
                                    content {
                                      key      = match_expressions.value["key"]
                                      operator = match_expressions.value["operator"]
                                      values   = match_expressions.value["values"]
                                    }
                                  }

                                }
                              }

                            }
                          }

                        }
                      }

                      dynamic "required_during_scheduling_ignored_during_execution" {
                        for_each = pod_affinity.value.required_during_scheduling_ignored_during_execution
                        content {
                          namespaces   = required_during_scheduling_ignored_during_execution.value["namespaces"]
                          topology_key = required_during_scheduling_ignored_during_execution.value["topology_key"]

                          dynamic "label_selector" {
                            for_each = required_during_scheduling_ignored_during_execution.value.label_selector
                            content {
                              match_labels = label_selector.value["match_labels"]

                              dynamic "match_expressions" {
                                for_each = label_selector.value.match_expressions
                                content {
                                  key      = match_expressions.value["key"]
                                  operator = match_expressions.value["operator"]
                                  values   = match_expressions.value["values"]
                                }
                              }

                            }
                          }

                        }
                      }

                    }
                  }

                  dynamic "pod_anti_affinity" {
                    for_each = affinity.value.pod_anti_affinity
                    content {

                      dynamic "preferred_during_scheduling_ignored_during_execution" {
                        for_each = pod_anti_affinity.value.preferred_during_scheduling_ignored_during_execution
                        content {
                          weight = preferred_during_scheduling_ignored_during_execution.value["weight"]

                          dynamic "pod_affinity_term" {
                            for_each = preferred_during_scheduling_ignored_during_execution.value.pod_affinity_term
                            content {
                              namespaces   = pod_affinity_term.value["namespaces"]
                              topology_key = pod_affinity_term.value["topology_key"]

                              dynamic "label_selector" {
                                for_each = pod_affinity_term.value.label_selector
                                content {
                                  match_labels = label_selector.value["match_labels"]

                                  dynamic "match_expressions" {
                                    for_each = label_selector.value.match_expressions
                                    content {
                                      key      = match_expressions.value["key"]
                                      operator = match_expressions.value["operator"]
                                      values   = match_expressions.value["values"]
                                    }
                                  }

                                }
                              }

                            }
                          }

                        }
                      }

                      dynamic "required_during_scheduling_ignored_during_execution" {
                        for_each = pod_anti_affinity.value.required_during_scheduling_ignored_during_execution
                        content {
                          namespaces   = required_during_scheduling_ignored_during_execution.value["namespaces"]
                          topology_key = required_during_scheduling_ignored_during_execution.value["topology_key"]

                          dynamic "label_selector" {
                            for_each = required_during_scheduling_ignored_during_execution.value.label_selector
                            content {
                              match_labels = label_selector.value["match_labels"]

                              dynamic "match_expressions" {
                                for_each = label_selector.value.match_expressions
                                content {
                                  key      = match_expressions.value["key"]
                                  operator = match_expressions.value["operator"]
                                  values   = match_expressions.value["values"]
                                }
                              }

                            }
                          }

                        }
                      }

                    }
                  }

                }
              }

              dynamic "container" {
                for_each = spec.value.container
                content {
                  args                     = container.value["args"]
                  command                  = container.value["command"]
                  image                    = container.value["image"]
                  image_pull_policy        = container.value["image_pull_policy"]
                  name                     = container.value["name"]
                  stdin                    = container.value["stdin"]
                  stdin_once               = container.value["stdin_once"]
                  termination_message_path = container.value["termination_message_path"]
                  tty                      = container.value["tty"]
                  working_dir              = container.value["working_dir"]

                  dynamic "env" {
                    for_each = container.value.env
                    content {
                      name  = env.value["name"]
                      value = env.value["value"]

                      dynamic "value_from" {
                        for_each = env.value.value_from
                        content {

                          dynamic "config_map_key_ref" {
                            for_each = value_from.value.config_map_key_ref
                            content {
                              key  = config_map_key_ref.value["key"]
                              name = config_map_key_ref.value["name"]
                            }
                          }

                          dynamic "field_ref" {
                            for_each = value_from.value.field_ref
                            content {
                              api_version = field_ref.value["api_version"]
                              field_path  = field_ref.value["field_path"]
                            }
                          }

                          dynamic "resource_field_ref" {
                            for_each = value_from.value.resource_field_ref
                            content {
                              container_name = resource_field_ref.value["container_name"]
                              resource       = resource_field_ref.value["resource"]
                            }
                          }

                          dynamic "secret_key_ref" {
                            for_each = value_from.value.secret_key_ref
                            content {
                              key  = secret_key_ref.value["key"]
                              name = secret_key_ref.value["name"]
                            }
                          }

                        }
                      }

                    }
                  }

                  dynamic "env_from" {
                    for_each = container.value.env_from
                    content {
                      prefix = env_from.value["prefix"]

                      dynamic "config_map_ref" {
                        for_each = env_from.value.config_map_ref
                        content {
                          name     = config_map_ref.value["name"]
                          optional = config_map_ref.value["optional"]
                        }
                      }

                      dynamic "secret_ref" {
                        for_each = env_from.value.secret_ref
                        content {
                          name     = secret_ref.value["name"]
                          optional = secret_ref.value["optional"]
                        }
                      }

                    }
                  }

                  dynamic "lifecycle" {
                    for_each = container.value.lifecycle
                    content {

                      dynamic "post_start" {
                        for_each = lifecycle.value.post_start
                        content {

                          dynamic "exec" {
                            for_each = post_start.value.exec
                            content {
                              command = exec.value["command"]
                            }
                          }

                          dynamic "http_get" {
                            for_each = post_start.value.http_get
                            content {
                              host   = http_get.value["host"]
                              path   = http_get.value["path"]
                              port   = http_get.value["port"]
                              scheme = http_get.value["scheme"]

                              dynamic "http_header" {
                                for_each = http_get.value.http_header
                                content {
                                  name  = http_header.value["name"]
                                  value = http_header.value["value"]
                                }
                              }

                            }
                          }

                          dynamic "tcp_socket" {
                            for_each = post_start.value.tcp_socket
                            content {
                              port = tcp_socket.value["port"]
                            }
                          }

                        }
                      }

                      dynamic "pre_stop" {
                        for_each = lifecycle.value.pre_stop
                        content {

                          dynamic "exec" {
                            for_each = pre_stop.value.exec
                            content {
                              command = exec.value["command"]
                            }
                          }

                          dynamic "http_get" {
                            for_each = pre_stop.value.http_get
                            content {
                              host   = http_get.value["host"]
                              path   = http_get.value["path"]
                              port   = http_get.value["port"]
                              scheme = http_get.value["scheme"]

                              dynamic "http_header" {
                                for_each = http_get.value.http_header
                                content {
                                  name  = http_header.value["name"]
                                  value = http_header.value["value"]
                                }
                              }

                            }
                          }

                          dynamic "tcp_socket" {
                            for_each = pre_stop.value.tcp_socket
                            content {
                              port = tcp_socket.value["port"]
                            }
                          }

                        }
                      }

                    }
                  }

                  dynamic "liveness_probe" {
                    for_each = container.value.liveness_probe
                    content {
                      failure_threshold     = liveness_probe.value["failure_threshold"]
                      initial_delay_seconds = liveness_probe.value["initial_delay_seconds"]
                      period_seconds        = liveness_probe.value["period_seconds"]
                      success_threshold     = liveness_probe.value["success_threshold"]
                      timeout_seconds       = liveness_probe.value["timeout_seconds"]

                      dynamic "exec" {
                        for_each = liveness_probe.value.exec
                        content {
                          command = exec.value["command"]
                        }
                      }

                      dynamic "http_get" {
                        for_each = liveness_probe.value.http_get
                        content {
                          host   = http_get.value["host"]
                          path   = http_get.value["path"]
                          port   = http_get.value["port"]
                          scheme = http_get.value["scheme"]

                          dynamic "http_header" {
                            for_each = http_get.value.http_header
                            content {
                              name  = http_header.value["name"]
                              value = http_header.value["value"]
                            }
                          }

                        }
                      }

                      dynamic "tcp_socket" {
                        for_each = liveness_probe.value.tcp_socket
                        content {
                          port = tcp_socket.value["port"]
                        }
                      }

                    }
                  }

                  dynamic "port" {
                    for_each = container.value.port
                    content {
                      container_port = port.value["container_port"]
                      host_ip        = port.value["host_ip"]
                      host_port      = port.value["host_port"]
                      name           = port.value["name"]
                      protocol       = port.value["protocol"]
                    }
                  }

                  dynamic "readiness_probe" {
                    for_each = container.value.readiness_probe
                    content {
                      failure_threshold     = readiness_probe.value["failure_threshold"]
                      initial_delay_seconds = readiness_probe.value["initial_delay_seconds"]
                      period_seconds        = readiness_probe.value["period_seconds"]
                      success_threshold     = readiness_probe.value["success_threshold"]
                      timeout_seconds       = readiness_probe.value["timeout_seconds"]

                      dynamic "exec" {
                        for_each = readiness_probe.value.exec
                        content {
                          command = exec.value["command"]
                        }
                      }

                      dynamic "http_get" {
                        for_each = readiness_probe.value.http_get
                        content {
                          host   = http_get.value["host"]
                          path   = http_get.value["path"]
                          port   = http_get.value["port"]
                          scheme = http_get.value["scheme"]

                          dynamic "http_header" {
                            for_each = http_get.value.http_header
                            content {
                              name  = http_header.value["name"]
                              value = http_header.value["value"]
                            }
                          }

                        }
                      }

                      dynamic "tcp_socket" {
                        for_each = readiness_probe.value.tcp_socket
                        content {
                          port = tcp_socket.value["port"]
                        }
                      }

                    }
                  }

                  dynamic "resources" {
                    for_each = container.value.resources
                    content {

                      dynamic "limits" {
                        for_each = resources.value.limits
                        content {
                          cpu    = limits.value["cpu"]
                          memory = limits.value["memory"]
                        }
                      }

                      dynamic "requests" {
                        for_each = resources.value.requests
                        content {
                          cpu    = requests.value["cpu"]
                          memory = requests.value["memory"]
                        }
                      }

                    }
                  }

                  dynamic "security_context" {
                    for_each = container.value.security_context
                    content {
                      allow_privilege_escalation = security_context.value["allow_privilege_escalation"]
                      privileged                 = security_context.value["privileged"]
                      read_only_root_filesystem  = security_context.value["read_only_root_filesystem"]
                      run_as_group               = security_context.value["run_as_group"]
                      run_as_non_root            = security_context.value["run_as_non_root"]
                      run_as_user                = security_context.value["run_as_user"]

                      dynamic "capabilities" {
                        for_each = security_context.value.capabilities
                        content {
                          add  = capabilities.value["add"]
                          drop = capabilities.value["drop"]
                        }
                      }

                      dynamic "se_linux_options" {
                        for_each = security_context.value.se_linux_options
                        content {
                          level = se_linux_options.value["level"]
                          role  = se_linux_options.value["role"]
                          type  = se_linux_options.value["type"]
                          user  = se_linux_options.value["user"]
                        }
                      }

                    }
                  }

                  dynamic "startup_probe" {
                    for_each = container.value.startup_probe
                    content {
                      failure_threshold     = startup_probe.value["failure_threshold"]
                      initial_delay_seconds = startup_probe.value["initial_delay_seconds"]
                      period_seconds        = startup_probe.value["period_seconds"]
                      success_threshold     = startup_probe.value["success_threshold"]
                      timeout_seconds       = startup_probe.value["timeout_seconds"]

                      dynamic "exec" {
                        for_each = startup_probe.value.exec
                        content {
                          command = exec.value["command"]
                        }
                      }

                      dynamic "http_get" {
                        for_each = startup_probe.value.http_get
                        content {
                          host   = http_get.value["host"]
                          path   = http_get.value["path"]
                          port   = http_get.value["port"]
                          scheme = http_get.value["scheme"]

                          dynamic "http_header" {
                            for_each = http_get.value.http_header
                            content {
                              name  = http_header.value["name"]
                              value = http_header.value["value"]
                            }
                          }

                        }
                      }

                      dynamic "tcp_socket" {
                        for_each = startup_probe.value.tcp_socket
                        content {
                          port = tcp_socket.value["port"]
                        }
                      }

                    }
                  }

                  dynamic "volume_mount" {
                    for_each = container.value.volume_mount
                    content {
                      mount_path        = volume_mount.value["mount_path"]
                      mount_propagation = volume_mount.value["mount_propagation"]
                      name              = volume_mount.value["name"]
                      read_only         = volume_mount.value["read_only"]
                      sub_path          = volume_mount.value["sub_path"]
                    }
                  }

                }
              }

              dynamic "dns_config" {
                for_each = spec.value.dns_config
                content {
                  nameservers = dns_config.value["nameservers"]
                  searches    = dns_config.value["searches"]

                  dynamic "option" {
                    for_each = dns_config.value.option
                    content {
                      name  = option.value["name"]
                      value = option.value["value"]
                    }
                  }

                }
              }

              dynamic "host_aliases" {
                for_each = spec.value.host_aliases
                content {
                  hostnames = host_aliases.value["hostnames"]
                  ip        = host_aliases.value["ip"]
                }
              }

              dynamic "image_pull_secrets" {
                for_each = spec.value.image_pull_secrets
                content {
                  name = image_pull_secrets.value["name"]
                }
              }

              dynamic "init_container" {
                for_each = spec.value.init_container
                content {
                  args                     = init_container.value["args"]
                  command                  = init_container.value["command"]
                  image                    = init_container.value["image"]
                  image_pull_policy        = init_container.value["image_pull_policy"]
                  name                     = init_container.value["name"]
                  stdin                    = init_container.value["stdin"]
                  stdin_once               = init_container.value["stdin_once"]
                  termination_message_path = init_container.value["termination_message_path"]
                  tty                      = init_container.value["tty"]
                  working_dir              = init_container.value["working_dir"]

                  dynamic "env" {
                    for_each = init_container.value.env
                    content {
                      name  = env.value["name"]
                      value = env.value["value"]

                      dynamic "value_from" {
                        for_each = env.value.value_from
                        content {

                          dynamic "config_map_key_ref" {
                            for_each = value_from.value.config_map_key_ref
                            content {
                              key  = config_map_key_ref.value["key"]
                              name = config_map_key_ref.value["name"]
                            }
                          }

                          dynamic "field_ref" {
                            for_each = value_from.value.field_ref
                            content {
                              api_version = field_ref.value["api_version"]
                              field_path  = field_ref.value["field_path"]
                            }
                          }

                          dynamic "resource_field_ref" {
                            for_each = value_from.value.resource_field_ref
                            content {
                              container_name = resource_field_ref.value["container_name"]
                              resource       = resource_field_ref.value["resource"]
                            }
                          }

                          dynamic "secret_key_ref" {
                            for_each = value_from.value.secret_key_ref
                            content {
                              key  = secret_key_ref.value["key"]
                              name = secret_key_ref.value["name"]
                            }
                          }

                        }
                      }

                    }
                  }

                  dynamic "env_from" {
                    for_each = init_container.value.env_from
                    content {
                      prefix = env_from.value["prefix"]

                      dynamic "config_map_ref" {
                        for_each = env_from.value.config_map_ref
                        content {
                          name     = config_map_ref.value["name"]
                          optional = config_map_ref.value["optional"]
                        }
                      }

                      dynamic "secret_ref" {
                        for_each = env_from.value.secret_ref
                        content {
                          name     = secret_ref.value["name"]
                          optional = secret_ref.value["optional"]
                        }
                      }

                    }
                  }

                  dynamic "lifecycle" {
                    for_each = init_container.value.lifecycle
                    content {

                      dynamic "post_start" {
                        for_each = lifecycle.value.post_start
                        content {

                          dynamic "exec" {
                            for_each = post_start.value.exec
                            content {
                              command = exec.value["command"]
                            }
                          }

                          dynamic "http_get" {
                            for_each = post_start.value.http_get
                            content {
                              host   = http_get.value["host"]
                              path   = http_get.value["path"]
                              port   = http_get.value["port"]
                              scheme = http_get.value["scheme"]

                              dynamic "http_header" {
                                for_each = http_get.value.http_header
                                content {
                                  name  = http_header.value["name"]
                                  value = http_header.value["value"]
                                }
                              }

                            }
                          }

                          dynamic "tcp_socket" {
                            for_each = post_start.value.tcp_socket
                            content {
                              port = tcp_socket.value["port"]
                            }
                          }

                        }
                      }

                      dynamic "pre_stop" {
                        for_each = lifecycle.value.pre_stop
                        content {

                          dynamic "exec" {
                            for_each = pre_stop.value.exec
                            content {
                              command = exec.value["command"]
                            }
                          }

                          dynamic "http_get" {
                            for_each = pre_stop.value.http_get
                            content {
                              host   = http_get.value["host"]
                              path   = http_get.value["path"]
                              port   = http_get.value["port"]
                              scheme = http_get.value["scheme"]

                              dynamic "http_header" {
                                for_each = http_get.value.http_header
                                content {
                                  name  = http_header.value["name"]
                                  value = http_header.value["value"]
                                }
                              }

                            }
                          }

                          dynamic "tcp_socket" {
                            for_each = pre_stop.value.tcp_socket
                            content {
                              port = tcp_socket.value["port"]
                            }
                          }

                        }
                      }

                    }
                  }

                  dynamic "liveness_probe" {
                    for_each = init_container.value.liveness_probe
                    content {
                      failure_threshold     = liveness_probe.value["failure_threshold"]
                      initial_delay_seconds = liveness_probe.value["initial_delay_seconds"]
                      period_seconds        = liveness_probe.value["period_seconds"]
                      success_threshold     = liveness_probe.value["success_threshold"]
                      timeout_seconds       = liveness_probe.value["timeout_seconds"]

                      dynamic "exec" {
                        for_each = liveness_probe.value.exec
                        content {
                          command = exec.value["command"]
                        }
                      }

                      dynamic "http_get" {
                        for_each = liveness_probe.value.http_get
                        content {
                          host   = http_get.value["host"]
                          path   = http_get.value["path"]
                          port   = http_get.value["port"]
                          scheme = http_get.value["scheme"]

                          dynamic "http_header" {
                            for_each = http_get.value.http_header
                            content {
                              name  = http_header.value["name"]
                              value = http_header.value["value"]
                            }
                          }

                        }
                      }

                      dynamic "tcp_socket" {
                        for_each = liveness_probe.value.tcp_socket
                        content {
                          port = tcp_socket.value["port"]
                        }
                      }

                    }
                  }

                  dynamic "port" {
                    for_each = init_container.value.port
                    content {
                      container_port = port.value["container_port"]
                      host_ip        = port.value["host_ip"]
                      host_port      = port.value["host_port"]
                      name           = port.value["name"]
                      protocol       = port.value["protocol"]
                    }
                  }

                  dynamic "readiness_probe" {
                    for_each = init_container.value.readiness_probe
                    content {
                      failure_threshold     = readiness_probe.value["failure_threshold"]
                      initial_delay_seconds = readiness_probe.value["initial_delay_seconds"]
                      period_seconds        = readiness_probe.value["period_seconds"]
                      success_threshold     = readiness_probe.value["success_threshold"]
                      timeout_seconds       = readiness_probe.value["timeout_seconds"]

                      dynamic "exec" {
                        for_each = readiness_probe.value.exec
                        content {
                          command = exec.value["command"]
                        }
                      }

                      dynamic "http_get" {
                        for_each = readiness_probe.value.http_get
                        content {
                          host   = http_get.value["host"]
                          path   = http_get.value["path"]
                          port   = http_get.value["port"]
                          scheme = http_get.value["scheme"]

                          dynamic "http_header" {
                            for_each = http_get.value.http_header
                            content {
                              name  = http_header.value["name"]
                              value = http_header.value["value"]
                            }
                          }

                        }
                      }

                      dynamic "tcp_socket" {
                        for_each = readiness_probe.value.tcp_socket
                        content {
                          port = tcp_socket.value["port"]
                        }
                      }

                    }
                  }

                  dynamic "resources" {
                    for_each = init_container.value.resources
                    content {

                      dynamic "limits" {
                        for_each = resources.value.limits
                        content {
                          cpu    = limits.value["cpu"]
                          memory = limits.value["memory"]
                        }
                      }

                      dynamic "requests" {
                        for_each = resources.value.requests
                        content {
                          cpu    = requests.value["cpu"]
                          memory = requests.value["memory"]
                        }
                      }

                    }
                  }

                  dynamic "security_context" {
                    for_each = init_container.value.security_context
                    content {
                      allow_privilege_escalation = security_context.value["allow_privilege_escalation"]
                      privileged                 = security_context.value["privileged"]
                      read_only_root_filesystem  = security_context.value["read_only_root_filesystem"]
                      run_as_group               = security_context.value["run_as_group"]
                      run_as_non_root            = security_context.value["run_as_non_root"]
                      run_as_user                = security_context.value["run_as_user"]

                      dynamic "capabilities" {
                        for_each = security_context.value.capabilities
                        content {
                          add  = capabilities.value["add"]
                          drop = capabilities.value["drop"]
                        }
                      }

                      dynamic "se_linux_options" {
                        for_each = security_context.value.se_linux_options
                        content {
                          level = se_linux_options.value["level"]
                          role  = se_linux_options.value["role"]
                          type  = se_linux_options.value["type"]
                          user  = se_linux_options.value["user"]
                        }
                      }

                    }
                  }

                  dynamic "startup_probe" {
                    for_each = init_container.value.startup_probe
                    content {
                      failure_threshold     = startup_probe.value["failure_threshold"]
                      initial_delay_seconds = startup_probe.value["initial_delay_seconds"]
                      period_seconds        = startup_probe.value["period_seconds"]
                      success_threshold     = startup_probe.value["success_threshold"]
                      timeout_seconds       = startup_probe.value["timeout_seconds"]

                      dynamic "exec" {
                        for_each = startup_probe.value.exec
                        content {
                          command = exec.value["command"]
                        }
                      }

                      dynamic "http_get" {
                        for_each = startup_probe.value.http_get
                        content {
                          host   = http_get.value["host"]
                          path   = http_get.value["path"]
                          port   = http_get.value["port"]
                          scheme = http_get.value["scheme"]

                          dynamic "http_header" {
                            for_each = http_get.value.http_header
                            content {
                              name  = http_header.value["name"]
                              value = http_header.value["value"]
                            }
                          }

                        }
                      }

                      dynamic "tcp_socket" {
                        for_each = startup_probe.value.tcp_socket
                        content {
                          port = tcp_socket.value["port"]
                        }
                      }

                    }
                  }

                  dynamic "volume_mount" {
                    for_each = init_container.value.volume_mount
                    content {
                      mount_path        = volume_mount.value["mount_path"]
                      mount_propagation = volume_mount.value["mount_propagation"]
                      name              = volume_mount.value["name"]
                      read_only         = volume_mount.value["read_only"]
                      sub_path          = volume_mount.value["sub_path"]
                    }
                  }

                }
              }

              dynamic "security_context" {
                for_each = spec.value.security_context
                content {
                  fs_group            = security_context.value["fs_group"]
                  run_as_group        = security_context.value["run_as_group"]
                  run_as_non_root     = security_context.value["run_as_non_root"]
                  run_as_user         = security_context.value["run_as_user"]
                  supplemental_groups = security_context.value["supplemental_groups"]

                  dynamic "se_linux_options" {
                    for_each = security_context.value.se_linux_options
                    content {
                      level = se_linux_options.value["level"]
                      role  = se_linux_options.value["role"]
                      type  = se_linux_options.value["type"]
                      user  = se_linux_options.value["user"]
                    }
                  }

                }
              }

              dynamic "toleration" {
                for_each = spec.value.toleration
                content {
                  effect             = toleration.value["effect"]
                  key                = toleration.value["key"]
                  operator           = toleration.value["operator"]
                  toleration_seconds = toleration.value["toleration_seconds"]
                  value              = toleration.value["value"]
                }
              }

              dynamic "volume" {
                for_each = spec.value.volume
                content {
                  name = volume.value["name"]

                  dynamic "aws_elastic_block_store" {
                    for_each = volume.value.aws_elastic_block_store
                    content {
                      fs_type   = aws_elastic_block_store.value["fs_type"]
                      partition = aws_elastic_block_store.value["partition"]
                      read_only = aws_elastic_block_store.value["read_only"]
                      volume_id = aws_elastic_block_store.value["volume_id"]
                    }
                  }

                  dynamic "azure_disk" {
                    for_each = volume.value.azure_disk
                    content {
                      caching_mode  = azure_disk.value["caching_mode"]
                      data_disk_uri = azure_disk.value["data_disk_uri"]
                      disk_name     = azure_disk.value["disk_name"]
                      fs_type       = azure_disk.value["fs_type"]
                      read_only     = azure_disk.value["read_only"]
                    }
                  }

                  dynamic "azure_file" {
                    for_each = volume.value.azure_file
                    content {
                      read_only   = azure_file.value["read_only"]
                      secret_name = azure_file.value["secret_name"]
                      share_name  = azure_file.value["share_name"]
                    }
                  }

                  dynamic "ceph_fs" {
                    for_each = volume.value.ceph_fs
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
                    for_each = volume.value.cinder
                    content {
                      fs_type   = cinder.value["fs_type"]
                      read_only = cinder.value["read_only"]
                      volume_id = cinder.value["volume_id"]
                    }
                  }

                  dynamic "config_map" {
                    for_each = volume.value.config_map
                    content {
                      default_mode = config_map.value["default_mode"]
                      name         = config_map.value["name"]

                      dynamic "items" {
                        for_each = config_map.value.items
                        content {
                          key  = items.value["key"]
                          mode = items.value["mode"]
                          path = items.value["path"]
                        }
                      }

                    }
                  }

                  dynamic "downward_api" {
                    for_each = volume.value.downward_api
                    content {
                      default_mode = downward_api.value["default_mode"]

                      dynamic "items" {
                        for_each = downward_api.value.items
                        content {
                          mode = items.value["mode"]
                          path = items.value["path"]

                          dynamic "field_ref" {
                            for_each = items.value.field_ref
                            content {
                              api_version = field_ref.value["api_version"]
                              field_path  = field_ref.value["field_path"]
                            }
                          }

                          dynamic "resource_field_ref" {
                            for_each = items.value.resource_field_ref
                            content {
                              container_name = resource_field_ref.value["container_name"]
                              quantity       = resource_field_ref.value["quantity"]
                              resource       = resource_field_ref.value["resource"]
                            }
                          }

                        }
                      }

                    }
                  }

                  dynamic "empty_dir" {
                    for_each = volume.value.empty_dir
                    content {
                      medium = empty_dir.value["medium"]
                    }
                  }

                  dynamic "fc" {
                    for_each = volume.value.fc
                    content {
                      fs_type      = fc.value["fs_type"]
                      lun          = fc.value["lun"]
                      read_only    = fc.value["read_only"]
                      target_ww_ns = fc.value["target_ww_ns"]
                    }
                  }

                  dynamic "flex_volume" {
                    for_each = volume.value.flex_volume
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
                    for_each = volume.value.flocker
                    content {
                      dataset_name = flocker.value["dataset_name"]
                      dataset_uuid = flocker.value["dataset_uuid"]
                    }
                  }

                  dynamic "gce_persistent_disk" {
                    for_each = volume.value.gce_persistent_disk
                    content {
                      fs_type   = gce_persistent_disk.value["fs_type"]
                      partition = gce_persistent_disk.value["partition"]
                      pd_name   = gce_persistent_disk.value["pd_name"]
                      read_only = gce_persistent_disk.value["read_only"]
                    }
                  }

                  dynamic "git_repo" {
                    for_each = volume.value.git_repo
                    content {
                      directory  = git_repo.value["directory"]
                      repository = git_repo.value["repository"]
                      revision   = git_repo.value["revision"]
                    }
                  }

                  dynamic "glusterfs" {
                    for_each = volume.value.glusterfs
                    content {
                      endpoints_name = glusterfs.value["endpoints_name"]
                      path           = glusterfs.value["path"]
                      read_only      = glusterfs.value["read_only"]
                    }
                  }

                  dynamic "host_path" {
                    for_each = volume.value.host_path
                    content {
                      path = host_path.value["path"]
                      type = host_path.value["type"]
                    }
                  }

                  dynamic "iscsi" {
                    for_each = volume.value.iscsi
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
                    for_each = volume.value.local
                    content {
                      path = local.value["path"]
                    }
                  }

                  dynamic "nfs" {
                    for_each = volume.value.nfs
                    content {
                      path      = nfs.value["path"]
                      read_only = nfs.value["read_only"]
                      server    = nfs.value["server"]
                    }
                  }

                  dynamic "persistent_volume_claim" {
                    for_each = volume.value.persistent_volume_claim
                    content {
                      claim_name = persistent_volume_claim.value["claim_name"]
                      read_only  = persistent_volume_claim.value["read_only"]
                    }
                  }

                  dynamic "photon_persistent_disk" {
                    for_each = volume.value.photon_persistent_disk
                    content {
                      fs_type = photon_persistent_disk.value["fs_type"]
                      pd_id   = photon_persistent_disk.value["pd_id"]
                    }
                  }

                  dynamic "quobyte" {
                    for_each = volume.value.quobyte
                    content {
                      group     = quobyte.value["group"]
                      read_only = quobyte.value["read_only"]
                      registry  = quobyte.value["registry"]
                      user      = quobyte.value["user"]
                      volume    = quobyte.value["volume"]
                    }
                  }

                  dynamic "rbd" {
                    for_each = volume.value.rbd
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

                  dynamic "secret" {
                    for_each = volume.value.secret
                    content {
                      default_mode = secret.value["default_mode"]
                      optional     = secret.value["optional"]
                      secret_name  = secret.value["secret_name"]

                      dynamic "items" {
                        for_each = secret.value.items
                        content {
                          key  = items.value["key"]
                          mode = items.value["mode"]
                          path = items.value["path"]
                        }
                      }

                    }
                  }

                  dynamic "vsphere_volume" {
                    for_each = volume.value.vsphere_volume
                    content {
                      fs_type     = vsphere_volume.value["fs_type"]
                      volume_path = vsphere_volume.value["volume_path"]
                    }
                  }

                }
              }

            }
          }

        }
      }

    }
  }

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      delete = timeouts.value["delete"]
    }
  }

}

