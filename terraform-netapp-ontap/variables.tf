variable "ontap_cluster_mgmt_ip" {
  description = "NetApp ONTAP cluster management IP address"
  type        = string
}

variable "ontap_username" {
  description = "NetApp ONTAP admin username"
  type        = string
  sensitive   = true
}

variable "ontap_password" {
  description = "NetApp ONTAP admin password"
  type        = string
  sensitive   = true
}

variable "ontap_validate_certs" {
  description = "Whether to validate SSL certificates"
  type        = bool
  default     = true
}