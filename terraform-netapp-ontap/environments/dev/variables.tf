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

variable "cluster_name" {
  description = "Name of the ONTAP cluster"
  type        = string
  default     = "cluster1"
}

variable "ipspace" {
  description = "IPspace for the SVM"
  type        = string
  default     = "Default"
}

variable "aggregates" {
  description = "List of aggregates to assign to the SVM"
  type        = list(string)
}

variable "comment" {
  description = "Comment for the SVM"
  type        = string
  default     = "Managed by Terraform"
}

variable "language" {
  description = "Language setting for the SVM"
  type        = string
  default     = "c.utf_8"
}

variable "snapshot_policy" {
  description = "Snapshot policy for the SVM"
  type        = string
  default     = "default"
}