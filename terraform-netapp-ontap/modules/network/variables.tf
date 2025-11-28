variable "network_interface_name" {
  description = "The name of the network interface."
  type        = string
}

variable "vlan_id" {
  description = "The VLAN ID for the network interface."
  type        = number
}

variable "broadcast_domain" {
  description = "The broadcast domain associated with the network interface."
  type        = string
}

variable "ip_address" {
  description = "The IP address for the network interface."
  type        = string
}

variable "netmask" {
  description = "The netmask for the network interface."
  type        = string
}

variable "gateway" {
  description = "The gateway for the network interface."
  type        = string
}

variable "protocols" {
  description = "List of protocols to enable on the network interface (e.g., nfs, cifs)."
  type        = list(string)
}