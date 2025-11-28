variable "svm_name" {
  description = "The name of the Storage Virtual Machine (SVM)."
  type        = string
}

variable "svm_ip" {
  description = "The IP address for the SVM."
  type        = string
}

variable "svm_netmask" {
  description = "The netmask for the SVM."
  type        = string
}

variable "svm_gateway" {
  description = "The gateway for the SVM."
  type        = string
}

variable "svm_protocols" {
  description = "List of protocols to enable on the SVM (e.g., nfs, cifs)."
  type        = list(string)
}

variable "svm_comment" {
  description = "Optional comment for the SVM."
  type        = string
  default     = ""
}