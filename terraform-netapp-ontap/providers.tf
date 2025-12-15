provider "netapp-ontap" {
  connection_profiles = [
    {
      name     = "labnetapp01"
      hostname = var.ontap_cluster_mgmt_ip
      username = var.ontap_username
      password = var.ontap_password
      validate_certs = var.ontap_validate_certs
    }
  ]
}