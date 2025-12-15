terraform {
  required_version = ">= 1.5.0"

  required_providers {
    netapp-ontap = {
      source  = "netapp/netapp-ontap"
      version = "~> 2.4.0"
    }
  }
}

module "svm" {
  source = "../../modules/svm"

  svm_name     = var.svm_name
  cluster_name = "labnetapp01"
  aggregates   = ["l01_01_aggr01_STD"]
}