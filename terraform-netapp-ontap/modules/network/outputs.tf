output "network_interface_ids" {
  description = "The IDs of the network interfaces created."
  value       = netapp_network_interface.ids
}

output "network_interface_ips" {
  description = "The IP addresses of the network interfaces created."
  value       = netapp_network_interface.ips
}

output "vlan_ids" {
  description = "The IDs of the VLANs created."
  value       = netapp_vlan.ids
}

output "broadcast_domain_ids" {
  description = "The IDs of the broadcast domains created."
  value       = netapp_broadcast_domain.ids
}