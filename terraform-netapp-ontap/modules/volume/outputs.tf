output "volume_id" {
  value = netapp-ontap_volume.this.id
}

output "volume_name" {
  value = netapp-ontap_volume.this.name
}

output "volume_size" {
  value = netapp-ontap_volume.this.space.size
}

output "volume_type" {
  value = netapp-ontap_volume.this.type
}