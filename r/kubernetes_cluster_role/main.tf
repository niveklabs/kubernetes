terraform {
  required_providers {
    kubernetes = ">= 1.11.1"
  }
}

resource "kubernetes_cluster_role" "this" {

  dynamic "metadata" {
    for_each = var.metadata
    content {
      annotations = metadata.value["annotations"]
      labels      = metadata.value["labels"]
      name        = metadata.value["name"]
    }
  }

  dynamic "rule" {
    for_each = var.rule
    content {
      api_groups        = rule.value["api_groups"]
      non_resource_urls = rule.value["non_resource_urls"]
      resource_names    = rule.value["resource_names"]
      resources         = rule.value["resources"]
      verbs             = rule.value["verbs"]
    }
  }

}

