resource "netapp_cifs_share" "cifs_share" {
  name                = var.share_name
  svm                 = var.svm_name
  path                = var.share_path
  security_style      = var.security_style
  unix_permissions    = var.unix_permissions
  ntfs_permissions    = var.ntfs_permissions
  comment             = var.comment
}

resource "netapp_cifs_server" "cifs_server" {
  name                = var.server_name
  svm                 = var.svm_name
  ip_address          = var.server_ip
  netmask             = var.netmask
  gateway             = var.gateway
  dns_servers         = var.dns_servers
}

output "cifs_share_id" {
  value = netapp_cifs_share.cifs_share.id
}

output "cifs_server_id" {
  value = netapp_cifs_server.cifs_server.id
}