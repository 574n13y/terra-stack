output "database_username" {
  description = "Username for the database."
  value       = "your-database-username"
}

output "database_password" {
  description = "Password for the database."
  value       = "your-database-password"
}

output "database_droplet_id" {
  value = digitalocean_droplet.database.id
}
