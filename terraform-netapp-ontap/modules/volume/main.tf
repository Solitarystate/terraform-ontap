resource "netapp-ontap_storage_volume" "this" {
  cx_profile_name   = var.cluster_name
  name              = var.volume_name
  svm_name          = var.svm_name
  size              = var.size
  space_guarantee   = var.space_guarantee
  aggregates        = [var.aggregate]
  type              = var.volume_type
  snapshot_policy   = var.snapshot_policy
}

output "volume_id" {
  value = netapp-ontap_storage_volume.this.id
}

output "volume_name" {
  value = netapp-ontap_storage_volume.this.name
}

output "volume_size" {
  value = netapp-ontap_storage_volume.this.size
}