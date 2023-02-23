# Output the load balancer public IP address
output "phonebook_lb_public_ip" {
  value = "http://${azurerm_public_ip.example.ip_address}"
}

output "website" {
  value = azurerm_public_ip.example.domain_name_label
}

output "ssh" {
  value = "ssh -i ${var.key_path} ${var.username}@${azurerm_public_ip.example.ip_address}"

}