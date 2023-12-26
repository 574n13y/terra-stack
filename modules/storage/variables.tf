variable "database_name" {
  description = "Name of the database"
  type        = string
  validation {
    condition     = length(var.database_name) > 0 && length(var.database_name) <= 20
    error_message = "The database_name must be between 1 and 20 characters."
  }
}

variable "database_region" {
  description = "Region where the database is located"
  type        = string
  validation {
    condition     = var.database_region != ""
    error_message = "The database_region must be provided."
  }
}

variable "database_size" {
  description = "Size of the database"
  type        = string
  validation {
    condition     = var.database_size != ""
    error_message = "The database_size must be provided."
  }
}

variable "database_image" {
  description = "Image for the database"
  type        = string
  validation {
    condition     = var.database_image != ""
    error_message = "The database_image must be provided."
  }
}

variable "digitalocean_token" {
  description = "DigitalOcean token"
  type        = string
  validation {
    condition     = length(var.digitalocean_token) > 0
    error_message = "The digitalocean_token must be provided."
  }
}
