resource "netapp_svm" "dev_svm" {
  name                = var.svm_name
  aggregate_name      = var.aggregate_name
  ipspace_name        = var.ipspace_name
  subnet              = var.subnet
  dns_domain          = var.dns_domain
  dns_servers         = var.dns_servers
  ntp_servers         = var.ntp_servers
  data_protection     = var.data_protection
  svm_type            = var.svm_type
}

module "network" {
  source = "../../modules/network"

  svm_name          = netapp_svm.dev_svm.name
  vlan_id           = var.vlan_id
  broadcast_domain  = var.broadcast_domain
}

module "volume" {
  source = "../../modules/volume"

  svm_name          = netapp_svm.dev_svm.name
  volume_name       = var.volume_name
  size              = var.volume_size
  volume_type       = var.volume_type
}

module "nfs" {
  source = "../../modules/nfs"

  svm_name          = netapp_svm.dev_svm.name
  nfs_share_name    = var.nfs_share_name
  nfs_share_path    = var.nfs_share_path
}

module "cifs" {
  source = "../../modules/cifs"

  svm_name          = netapp_svm.dev_svm.name
  cifs_share_name    = var.cifs_share_name
  cifs_share_path    = var.cifs_share_path
}