variable "cluster_name" {
  description = "Name of the NetApp ONTAP cluster"
  type        = string
}

variable "cluster_mgmt_ip" {
  description = "NetApp ONTAP cluster management IP address"
  type        = string
}

variable "cluster_username" {
  description = "NetApp ONTAP admin username"
  type        = string
}

variable "cluster_password" {
  description = "NetApp ONTAP admin password"
  type        = string
  sensitive   = true
}

variable "svm_name" {
  description = "Name of the Storage Virtual Machine (SVM)"
  type        = string
}

variable "ipspace" {
  description = "IP space for the SVM"
  type        = string
  default     = "Default"
}

variable "comment" {
  description = "Comment for the SVM"
  type        = string
  default     = "Managed by Terraform"
}

# Aggregate the SVM will use (as a string). The provider wants an object with name.
variable "aggregate" {
  description = "Aggregate for the SVM"
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