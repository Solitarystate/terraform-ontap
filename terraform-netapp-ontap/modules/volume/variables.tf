variable "volume_name" {
  description = "The name of the volume to be created."
  type        = string
}

variable "svm_name" {
  description = "The name of the Storage Virtual Machine (SVM) where the volume will be created."
  type        = string
}

variable "size" {
  description = "The size of the volume."
  type        = string
}

variable "volume_type" {
  description = "The type of the volume (e.g., 'flex', 'thin')."
  type        = string
}

variable "aggr_name" {
  description = "The name of the aggregate where the volume will be created."
  type        = string
}

variable "protocols" {
  description = "The protocols to enable on the volume (e.g., 'nfs', 'cifs')."
  type        = list(string)
}

variable "snapshot_policy" {
  description = "The snapshot policy to apply to the volume."
  type        = string
  default     = "default"
}