terraform {
  required_providers {
    netapp = {
      source  = "NetApp/netapp-ontap"
      version = "~> 1.0"
    }
  }

  required_version = ">= 1.0"
}