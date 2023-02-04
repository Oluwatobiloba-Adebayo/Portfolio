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

variable "SECRET_KEY" {
  default = "yl=kc_2vo-ag1)putz+qf9(6ry%x%^n(jr=y3jd7k4u9f)f@+s"
}

variable "DOCKER_IMAGE" {
  default = "DOCKER|hildredadebayo/django-portfolio:v2"
}