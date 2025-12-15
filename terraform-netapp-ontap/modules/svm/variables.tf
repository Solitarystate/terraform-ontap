variable "cluster_name" {
  description = "The connection profile name for the NetApp cluster"
  type        = string
}

variable "svm_name" {
  description = "The name of the Storage Virtual Machine (SVM)."
  type        = string
}

variable "aggregates" {
  description = "List of aggregates for the SVM"
  type        = list(string)
  default     = []
}

variable "ipspace" {
  description = "IPspace for the SVM"
  type        = string
  default     = "Default"
}

variable "comment" {
  description = "Optional comment for the SVM."
  type        = string
  default     = ""
}

variable "nfs_enabled" {
  description = "Enable NFS protocol"
  type        = bool
  default     = false
}

variable "cifs_enabled" {
  description = "Enable CIFS protocol"
  type        = bool
  default     = false
}