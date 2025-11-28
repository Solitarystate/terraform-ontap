output "cifs_share_details" {
  description = "Details of the created CIFS shares"
  value       = {
    share_name = netapp_cifs_share.example.name
    share_path = netapp_cifs_share.example.path
    cifs_server = netapp_cifs_server.example.name
  }
}