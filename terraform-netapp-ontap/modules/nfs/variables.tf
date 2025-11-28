variable "nfs_share_name" {
  description = "The name of the NFS share."
  type        = string
}

variable "nfs_share_path" {
  description = "The path where the NFS share will be created."
  type        = string
}

variable "nfs_share_size" {
  description = "The size of the NFS share."
  type        = string
}

variable "svm_name" {
  description = "The name of the Storage Virtual Machine (SVM) where the NFS share will be created."
  type        = string
}

variable "nfs_protocol_version" {
  description = "The NFS protocol version to be used."
  type        = string
  default     = "NFSv3"
}

variable "nfs_export_options" {
  description = "The export options for the NFS share."
  type        = list(string)
  default     = []
}