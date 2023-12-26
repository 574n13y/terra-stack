resource "digitalocean_droplet" "database" {
  name   = var.database_name
  region = var.database_region
  size   = var.database_size
  image  = var.database_image
}
