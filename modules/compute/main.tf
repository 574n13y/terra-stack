resource "digitalocean_droplet" "presentation" {
  name   = var.presentation_name
  region = var.presentation_region
  size   = var.presentation_size
  image  = var.presentation_image
}

resource "digitalocean_droplet" "application" {
  name   = var.application_name
  region = var.application_region
  size   = var.application_size
  image  = var.application_image
}
