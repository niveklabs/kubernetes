terraform {
  required_providers {
    kubernetes = ">= 1.11.1"
  }
}

resource "kubernetes_role" "this" {

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

  dynamic "rule" {
    for_each = var.rule
    content {
      api_groups     = rule.value["api_groups"]
      resource_names = rule.value["resource_names"]
      resources      = rule.value["resources"]
      verbs          = rule.value["verbs"]
    }
  }

}

