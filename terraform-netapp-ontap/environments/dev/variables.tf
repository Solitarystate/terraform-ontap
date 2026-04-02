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

# Volume variables
variable "volume_name" {
  description = "Name of the volume to create"
  type        = string
}

variable "size" {
  description = "Size of the volume (numeric, paired with size_unit)"
  type        = number
}

variable "size_unit" {
  description = "Unit for the volume size (kb, mb, gb, tb, pb)"
  type        = string
  default     = "gb"
}

variable "volume_type" {
  description = "Type of the volume (rw, dp, ls)"
  type        = string
  default     = "rw"
}

variable "aggregate" {
  description = "Aggregate where the volume will be created"
  type        = string
}

variable "space_guarantee" {
  description = "Space guarantee for the volume (none, file, volume)"
  type        = string
  default     = "none"
}

variable "snapshot_policy" {
  description = "Snapshot policy for the volume"
  type        = string
  default     = "default"
}