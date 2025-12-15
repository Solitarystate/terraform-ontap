resource "netapp-ontap_protocols_nfs_export_policy" "nfs_export" {
  cx_profile_name = var.cluster_name
  name            = var.nfs_share_name
  svm_name        = var.svm_name
}

resource "netapp-ontap_svm" "svm" {
  cx_profile_name = var.cluster_name
  name            = var.svm_name
  aggregates      = [var.aggregate]
  ipspace         = var.ipspace
}

output "nfs_export_id" {
  value = netapp-ontap_protocols_nfs_export_policy.nfs_export.id
}

output "svm_name" {
  value = netapp-ontap_svm.svm.name
}