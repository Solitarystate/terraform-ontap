resource "netapp-ontap_svm" "example" {
  cx_profile_name     = var.cluster_name
  name                = var.svm_name
  aggregates          = var.aggregates
  ipspace             = var.ipspace
  comment             = var.comment
}

resource "netapp-ontap_protocols_nfs_service" "nfs" {
  count           = var.nfs_enabled ? 1 : 0
  cx_profile_name = var.cluster_name
  svm_name        = netapp-ontap_svm.example.name
  enabled         = true
}

resource "netapp-ontap_protocols_cifs_service" "cifs" {
  count           = var.cifs_enabled ? 1 : 0
  cx_profile_name = var.cluster_name
  svm_name        = netapp-ontap_svm.example.name
  enabled         = true
}