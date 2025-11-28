resource "netapp_svm" "example" {
  name                = var.svm_name
  aggregate_name      = var.aggregate_name
  ipspace_name        = var.ipspace_name
  subnet              = var.subnet
  dns_domain          = var.dns_domain
  dns_servers         = var.dns_servers
  ntp_servers         = var.ntp_servers
  admin_password      = var.admin_password
  data_protection     = var.data_protection
}

module "network" {
  source = "../modules/network"

  svm_name        = netapp_svm.example.name
  vlan_id         = var.vlan_id
  broadcast_domain = var.broadcast_domain
}

module "volume" {
  source = "../modules/volume"

  svm_name = netapp_svm.example.name
  volume_name = var.volume_name
  size       = var.volume_size
  type       = var.volume_type
}

module "nfs" {
  source = "../modules/nfs"

  svm_name = netapp_svm.example.name
  nfs_share_name = var.nfs_share_name
  export_policy = var.export_policy
}

module "cifs" {
  source = "../modules/cifs"

  svm_name = netapp_svm.example.name
  cifs_share_name = var.cifs_share_name
  share_permissions = var.share_permissions
}