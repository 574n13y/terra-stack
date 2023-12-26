module "compute" {
  source = "../compute"

  presentation_name   = var.presentation_name
  presentation_region = var.presentation_region
  presentation_size   = var.presentation_size
  presentation_image  = var.presentation_image

  application_name   = var.application_name
  application_region = var.application_region
  application_size   = var.application_size
  application_image  = var.application_image

  digitalocean_token = var.digitalocean_token

}

module "storage" {
  source = "../storage"

  database_name   = var.database_name
  database_region = var.database_region
  database_size   = var.database_size
  database_image  = var.database_image

  digitalocean_token = var.digitalocean_token
}

resource "digitalocean_firewall" "firewall" {
  name = "firewall"
  droplet_ids = [
    module.compute.presentation_droplet_id,
    module.compute.application_droplet_id,
    module.storage.database_droplet_id
  ]

  inbound_rule {
    protocol         = "tcp"
    port_range       = "80"
    source_addresses = ["0.0.0.0/0"]
  }
}
