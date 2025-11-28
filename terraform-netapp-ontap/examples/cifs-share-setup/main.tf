provider "netapp_ontap" {
  username = var.netapp_username
  password = var.netapp_password
  endpoint = var.netapp_endpoint
}

module "svm" {
  source = "../../modules/svm"

  svm_name = var.svm_name
  ip_address = var.svm_ip_address
  # Add other SVM-related variables as needed
}

module "network" {
  source = "../../modules/network"

  svm_name = module.svm.svm_name
  # Add other network-related variables as needed
}

module "cifs" {
  source = "../../modules/cifs"

  svm_name = module.svm.svm_name
  cifs_share_name = var.cifs_share_name
  # Add other CIFS-related variables as needed
}

module "volume" {
  source = "../../modules/volume"

  svm_name = module.svm.svm_name
  volume_name = var.volume_name
  volume_size = var.volume_size
  # Add other volume-related variables as needed
}