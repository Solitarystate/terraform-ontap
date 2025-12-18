terraform {
  required_version = ">= 1.5.0"

  required_providers {
    netapp-ontap = {
      source  = "netapp/netapp-ontap"
      version = "~> 2.4.0"
    }
  }
}

provider "netapp-ontap" {
  alias = "netapp"
  
  connection_profiles = [{
    name           = var.cluster_name
    hostname       = var.cluster_mgmt_ip
    username       = var.cluster_username
    password       = var.cluster_password
    validate_certs = false
  }]
}

module "svm" {
  source = "../../modules/svm"
  
  providers = {
    netapp-ontap = netapp-ontap.netapp
  }

  cluster_name   = var.cluster_name
  svm_name       = var.svm_name
  ipspace        = var.ipspace
  comment        = var.comment
  aggregates     = var.aggregates
  nfs_enabled    = var.nfs_enabled
  cifs_enabled   = var.cifs_enabled
}