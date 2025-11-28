resource "netapp_ontap_network_interface" "this" {
  count            = var.network_interface_count
  svm_id           = var.svm_id
  ip_address       = var.ip_addresses[count.index]
  netmask          = var.netmask
  broadcast_domain = var.broadcast_domain
  vlan_id          = var.vlan_id
  role             = var.role
}

resource "netapp_ontap_vlan" "this" {
  count            = var.vlan_count
  name             = var.vlan_names[count.index]
  broadcast_domain = var.broadcast_domain
  vlan_id          = var.vlan_ids[count.index]
}

resource "netapp_ontap_broadcast_domain" "this" {
  name = var.broadcast_domain
}

output "network_interface_ids" {
  value = netapp_ontap_network_interface.this[*].id
}

output "vlan_ids" {
  value = netapp_ontap_vlan.this[*].id
}

output "broadcast_domain_id" {
  value = netapp_ontap_broadcast_domain.this.id
}