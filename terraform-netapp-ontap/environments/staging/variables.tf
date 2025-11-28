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

variable "svm_vserver_type" {
  description = "The type of SVM (e.g., default, data)"
  type        = string
  default     = "default"
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
  description = "The size of the volume to be created in the SVM"
  type        = string
}

variable "volume_type" {
  description = "The type of volume to be created (e.g., flex, thin)"
  type        = string
  default     = "flex"
}

variable "network_interface" {
  description = "The network interface to be used for the SVM"
  type        = string
}