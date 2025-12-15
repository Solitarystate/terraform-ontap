resource "netapp-ontap_networking_ip_interface" "this" {
  cx_profile_name = var.cluster_name
  count           = var.network_interface_count
  svm_name        = var.svm_name
  name            = var.interface_names[count.index]
  ip_address      = var.ip_addresses[count.index]
  netmask         = var.netmask
}

resource "netapp-ontap_networking_ethernet_broadcast_domain" "this" {
  cx_profile_name = var.cluster_name
  name            = var.broadcast_domain
}

output "network_interface_ids" {
  value = netapp-ontap_networking_ip_interface.this[*].id
}

output "broadcast_domain_id" {
  value = netapp_ontap_broadcast_domain.this.id
}