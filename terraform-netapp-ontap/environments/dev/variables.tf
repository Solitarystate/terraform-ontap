variable "svm_name" {
  description = "The name of the Storage Virtual Machine (SVM)"
  type        = string
}

variable "svm_ip" {
  description = "The IP address for the SVM"
  type        = string
}

variable "svm_netmask" {
  description = "The netmask for the SVM IP address"
  type        = string
}

variable "svm_username" {
  description = "The username for accessing the SVM"
  type        = string
}

variable "svm_password" {
  description = "The password for accessing the SVM"
  type        = string
  sensitive   = true
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