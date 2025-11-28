variable "cifs_share_name" {
  description = "The name of the CIFS share to be created."
  type        = string
}

variable "cifs_share_path" {
  description = "The path where the CIFS share will be created."
  type        = string
}

variable "cifs_share_description" {
  description = "A description for the CIFS share."
  type        = string
  default     = "CIFS share created by Terraform"
}

variable "cifs_share_permissions" {
  description = "The permissions for the CIFS share."
  type        = list(string)
  default     = ["Everyone"]
}

variable "cifs_share_quota" {
  description = "The quota for the CIFS share in MB."
  type        = number
  default     = 1024
}