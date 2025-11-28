terraform {
  required_providers {
    netapp-ontap = {
      source  = "NetApp/netapp-ontap"
      version = "~> 1.0"
    }
  }
}

provider "netapp-ontap" {
  connection_profiles = [
    {
      name     = "cluster1"
      hostname = var.ontap_cluster_mgmt_ip
      username = var.ontap_username
      password = var.ontap_password
      validate_certs = var.ontap_validate_certs
    }
  ]
}