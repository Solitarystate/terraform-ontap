terraform {
  required_providers {
    netapp-ontap = {
      source  = "netapp/netapp-ontap"
      version = "~> 2.4.0"
    }
  }
}

resource "netapp-ontap_volume" "this" {
  provider        = netapp-ontap
  cx_profile_name = var.cluster_name
  name            = var.volume_name
  svm_name        = var.svm_name

  aggregates      = [{ name = var.aggregate }]

  space = {
    size      = var.size
    size_unit = var.size_unit
  }

  space_guarantee = var.space_guarantee
  type            = var.volume_type
  snapshot_policy = var.snapshot_policy
}