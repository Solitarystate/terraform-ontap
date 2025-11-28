resource "netapp_svm" "prod_svm" {
  name              = var.svm_name
  aggregate         = var.aggregate
  ipspace           = var.ipspace
  subnet            = var.subnet
  dns_servers       = var.dns_servers
  ntp_servers       = var.ntp_servers
  data_protection   = var.data_protection
  comment           = var.comment
}

module "network" {
  source = "../../modules/network"

  svm_name         = netapp_svm.prod_svm.name
  vlan_id          = var.vlan_id
  broadcast_domain  = var.broadcast_domain
}

module "volume" {
  source = "../../modules/volume"

  svm_name         = netapp_svm.prod_svm.name
  volume_name      = var.volume_name
  size             = var.volume_size
  volume_type      = var.volume_type
}

module "nfs" {
  source = "../../modules/nfs"

  svm_name         = netapp_svm.prod_svm.name
  nfs_share_name   = var.nfs_share_name
  export_policy    = var.nfs_export_policy
}

module "cifs" {
  source = "../../modules/cifs"

  svm_name         = netapp_svm.prod_svm.name
  cifs_share_name  = var.cifs_share_name
  share_permissions = var.cifs_share_permissions
}