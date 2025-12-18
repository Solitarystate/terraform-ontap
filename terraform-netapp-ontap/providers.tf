# Provider configuration is now in environments/dev/main.tf
# Each environment handles its own provider setup

# provider "netapp-ontap" {
#   connection_profiles = [{
#     name           = var.cluster_name
#     hostname       = var.cluster_mgmt_ip
#     username       = var.cluster_username
#     password       = var.cluster_password
#     validate_certs = false
#   }]
# }