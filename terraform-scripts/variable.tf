variable "rg-name" {
  default = "django-portfolio-rg"
}

variable "rg-location" {
  default = "northeurope"
}

variable "DOCKER_REGISTRY_SERVER_URL" {
  default = "[URL to the docker repository your image is stored]"
  sensitive = true

}

variable "DOCKER_REGISTRY_SERVER_USERNAME" {
  default = "[your docker username]"
  sensitive = true

}

variable "DOCKER_REGISTRY_SERVER_PASSWORD" {
  default = "[your docker password]"
  sensitive = true

}

variable "DOCKER_IMAGE" {
  default = "DOCKER|[your docker image name and tag]"
}

#Pass this variable in the terraform apply command
variable "SECRET_KEY" {
  sensitive = true
}