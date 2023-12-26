output "firewall_id" {
  description = "ID of the firewall."
  value       = digitalocean_firewall.firewall.name
}
