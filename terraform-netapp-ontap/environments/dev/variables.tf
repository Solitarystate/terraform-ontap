# Cluster connection variables
variable "cluster_name" {
  description = "Name of the ONTAP cluster"
  type        = string
}

variable "cluster_mgmt_ip" {
  description = "Management IP of the ONTAP cluster"
  type        = string
}

variable "cluster_username" {
  description = "Username for ONTAP cluster access"
  type        = string
}

variable "cluster_password" {
  description = "Password for ONTAP cluster access"
  type        = string
  sensitive   = true
}

# SVM variables
variable "svm_name" {
  description = "Name of the Storage Virtual Machine"
  type        = string
}

variable "ipspace" {
  description = "IPspace for the SVM"
  type        = string
  default     = "Default"
}

variable "comment" {
  description = "Comment for the SVM"
  type        = string
  default     = "Managed by Terraform"
}

variable "aggregates" {
  description = "List of aggregates to assign to the SVM"
  type        = list(string)
}

# Protocol variables
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