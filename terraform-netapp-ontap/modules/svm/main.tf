resource "netapp_svm" "example" {
  name                = var.svm_name
  aggregate           = var.aggregate
  ipspace             = var.ipspace
  subnet              = var.subnet
  dns_domain          = var.dns_domain
  dns_servers         = var.dns_servers
  ntp_servers         = var.ntp_servers
  data_protection     = var.data_protection
  svm_type            = var.svm_type
  comment             = var.comment
}

resource "netapp_svm_protocol" "nfs" {
  svm_name = netapp_svm.example.name
  nfs {
    enabled = var.nfs_enabled
  }
}

resource "netapp_svm_protocol" "cifs" {
  svm_name = netapp_svm.example.name
  cifs {
    enabled = var.cifs_enabled
  }
}