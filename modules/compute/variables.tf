variable "presentation_name" {
  description = "Name of the presentation droplet"
  type        = string
  validation {
    condition     = length(var.presentation_name) > 0 && length(var.presentation_name) <= 20
    error_message = "The presentation_name must be between 1 and 20 characters."
  }
}

variable "presentation_region" {
  description = "Region for the presentation droplet"
  type        = string
  validation {
    condition     = var.presentation_region != ""
    error_message = "The presentation_region must be provided."
  }
}

variable "presentation_size" {
  description = "Size of the presentation droplet"
  type        = string
  validation {
    condition     = var.presentation_size != ""
    error_message = "The presentation_size must be provided."
  }
}

variable "presentation_image" {
  description = "Image for the presentation droplet"
  type        = string
  validation {
    condition     = var.presentation_image != ""
    error_message = "The presentation_image must be provided."
  }
}

variable "application_name" {
  description = "Name of the application droplet"
  type        = string
  validation {
    condition     = length(var.application_name) > 0 && length(var.application_name) <= 20
    error_message = "The application_name must be between 1 and 20 characters."
  }
}

variable "application_region" {
  description = "Region for the application droplet"
  type        = string
  validation {
    condition     = var.application_region != ""
    error_message = "The application_region must be provided."
  }
}

variable "application_size" {
  description = "Size of the application droplet"
  type        = string
  validation {
    condition     = var.application_size != ""
    error_message = "The application_size must be provided."
  }
}

variable "application_image" {
  description = "Image for the application droplet"
  type        = string
  validation {
    condition     = var.application_image != ""
    error_message = "The application_image must be provided."
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
