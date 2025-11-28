provider "netapp_ontap" {
  username = var.netapp_username
  password = var.netapp_password
  endpoint = var.netapp_endpoint
}

module "svm" {
  source = "../../modules/svm"

  svm_name = var.svm_name
  ip_address = var.svm_ip_address
  # Add other SVM-specific variables as needed
}

module "network" {
  source = "../../modules/network"

  svm_name = module.svm.svm_name
  # Add other network-specific variables as needed
}

module "volume" {
  source = "../../modules/volume"

  svm_name = module.svm.svm_name
  volume_name = var.volume_name
  size = var.volume_size
  # Add other volume-specific variables as needed
}

module "nfs" {
  source = "../../modules/nfs"

  svm_name = module.svm.svm_name
  nfs_share_name = var.nfs_share_name
  # Add other NFS-specific variables as needed
}