terraform {
  required_providers {
    netapp-ontap = {
      source  = "netapp/netapp-ontap"
      version = "~> 2.4.0"
    }
  }
}

resource "netapp-ontap_svm" "this" {
  provider        = netapp-ontap
  cx_profile_name = var.cluster_name
  name            = var.svm_name
  ipspace         = var.ipspace
  comment         = var.comment

  aggregates = [
    for aggr in var.aggregates : { name = aggr }
  ]

  # Ignore attributes that are automatically set by NetApp and shouldn't be managed by Terraform
  # https://opentofu.org/docs/v1.11/language/meta-arguments/lifecycle/
  # https://opentofu.org/docs/language/files/override/#merging-resource-and-data-blocks
  lifecycle {
    ignore_changes = [
      snapshot_policy,
      language,
      max_volumes,
      subtype
    ]
  }
}

# Note: Protocol services (NFS/CIFS) are typically enabled via the SVM resource itself
# or managed separately. The provider may not support these as separate resources.