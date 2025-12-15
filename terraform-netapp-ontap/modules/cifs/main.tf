resource "netapp-ontap_protocols_cifs_share" "cifs_share" {
  cx_profile_name = var.cluster_name
  name            = var.share_name
  svm_name        = var.svm_name
  path            = var.share_path
  comment         = var.comment
}

resource "netapp-ontap_protocols_cifs_service" "cifs_service" {
  cx_profile_name = var.cluster_name
  svm_name        = var.svm_name
  name            = var.server_name
  enabled         = true
}

output "cifs_share_id" {
  value = netapp-ontap_protocols_cifs_share.cifs_share.id
}

output "cifs_service_id" {
  value = netapp-ontap_protocols_cifs_service.cifs_service.id
}