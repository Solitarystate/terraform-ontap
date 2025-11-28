resource "netapp_volume" "this" {
  name              = var.volume_name
  svm               = var.svm_name
  size              = var.size
  space_guarantee   = var.space_guarantee
  aggregate         = var.aggregate
  volume_type       = var.volume_type
  snapshot_policy    = var.snapshot_policy
  encryption        = var.encryption
  qos_policy        = var.qos_policy
}

output "volume_id" {
  value = netapp_volume.this.id
}

output "volume_name" {
  value = netapp_volume.this.name
}

output "volume_size" {
  value = netapp_volume.this.size
}