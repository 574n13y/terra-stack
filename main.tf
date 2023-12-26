module "networking" {
  source = "./modules/networking"

  digitalocean_token = var.digitalocean_token

  presentation_name   = var.presentation_name
  presentation_region = var.presentation_region
  presentation_size   = var.presentation_size
  presentation_image  = var.presentation_image

  application_name   = var.application_name
  application_region = var.application_region
  application_size   = var.application_size
  application_image  = var.application_image


  database_name   = var.database_name
  database_region = var.database_region
  database_size   = var.database_size
  database_image  = var.database_image
}