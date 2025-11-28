resource "netapp_svm" "staging_svm" {
  name                = var.svm_name
  ip_address          = var.svm_ip_address
  subnet              = var.svm_subnet
  dns_domain          = var.dns_domain
  dns_servers         = var.dns_servers
  data_protection     = var.data_protection
  aggregate           = var.aggregate
  volume_limit        = var.volume_limit
}

module "network" {
  source = "../../modules/network"

  svm_name            = netapp_svm.staging_svm.name
  network_interfaces  = var.network_interfaces
}

module "volume" {
  source = "../../modules/volume"

  svm_name            = netapp_svm.staging_svm.name
  volumes             = var.volumes
}

module "nfs" {
  source = "../../modules/nfs"

  svm_name            = netapp_svm.staging_svm.name
  nfs_shares          = var.nfs_shares
}

module "cifs" {
  source = "../../modules/cifs"

  svm_name            = netapp_svm.staging_svm.name
  cifs_shares         = var.cifs_shares
}