terraform {
  required_providers {
    netapp-ontap = {
      source  = "netapp/netapp-ontap"
      version = "~> 2.4.0"
    }
  }

  required_version = ">= 1.5.0"
}