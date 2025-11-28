resource "netapp_nfs_share" "nfs_share" {
  name        = var.nfs_share_name
  svm         = var.svm_name
  path        = var.nfs_share_path
  export_rule = var.export_rule
}

resource "netapp_svm" "svm" {
  name            = var.svm_name
  aggregate       = var.aggregate
  ipspace         = var.ipspace
  subnet          = var.subnet
  dns_servers     = var.dns_servers
  nfs_enabled     = true
  cifs_enabled    = false
}

output "nfs_share_id" {
  value = netapp_nfs_share.nfs_share.id
}

output "nfs_share_path" {
  value = netapp_nfs_share.nfs_share.path
}