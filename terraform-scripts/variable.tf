variable "rg-name" {
  default = "django-portfolio-rg"
}

variable "rg-location" {
  default = "northeurope"
}

variable "DOCKER_REGISTRY_SERVER_URL" {
  default = "https://hub.docker.com/repository/docker/hildredadebayo/django-portfolio"
}

variable "DOCKER_REGISTRY_SERVER_USERNAME" {
  default = "hildredadebayo"
}

variable "DOCKER_REGISTRY_SERVER_PASSWORD" {
  default = "hildred_DOCKERHUB"
}

variable "DOCKER_IMAGE" {
  default = "DOCKER|hildredadebayo/django-portfolio:v2"
}