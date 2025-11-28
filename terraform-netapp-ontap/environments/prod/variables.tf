variable "svm_name" {
  description = "The name of the Storage Virtual Machine (SVM)"
  type        = string
}

variable "svm_ip" {
  description = "The IP address for the SVM"
  type        = string
}

variable "svm_netmask" {
  description = "The netmask for the SVM"
  type        = string
}

variable "svm_gateway" {
  description = "The gateway for the SVM"
  type        = string
}

variable "nfs_enabled" {
  description = "Enable NFS protocol on the SVM"
  type        = bool
  default     = false
}

variable "cifs_enabled" {
  description = "Enable CIFS protocol on the SVM"
  type        = bool
  default     = false
}

variable "volume_size" {
  description = "The size of the volume to be created"
  type        = string
}

variable "volume_name" {
  description = "The name of the volume to be created"
  type        = string
}

variable "network_interface" {
  description = "The network interface to be used for the SVM"
  type        = string
}

variable "vlan_id" {
  description = "The VLAN ID for the network interface"
  type        = number
}

variable "broadcast_domain" {
  description = "The broadcast domain for the network interface"
  type        = string
}