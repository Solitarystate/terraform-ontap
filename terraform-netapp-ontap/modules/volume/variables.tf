variable "cluster_name" {
  description = "The connection profile name for the NetApp cluster"
  type        = string
}

variable "volume_name" {
  description = "The name of the volume to be created."
  type        = string
}

variable "svm_name" {
  description = "The name of the SVM where the volume will be created."
  type        = string
}

variable "size" {
  description = "The size of the volume (numeric value, paired with size_unit)."
  type        = number
}

variable "size_unit" {
  description = "The unit for the volume size. Valid values: kb, mb, gb, tb, pb."
  type        = string
  default     = "gb"
}

variable "volume_type" {
  description = "The type of the volume. Valid values: rw, dp, ls."
  type        = string
  default     = "rw"
}

variable "aggregate" {
  description = "The name of the aggregate where the volume will be created."
  type        = string
}

variable "space_guarantee" {
  description = "Space guarantee for the volume. Valid values: none, file, volume."
  type        = string
  default     = "none"
}

variable "snapshot_policy" {
  description = "The snapshot policy to apply to the volume."
  type        = string
  default     = "default"
}