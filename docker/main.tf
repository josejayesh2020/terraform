terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
}

# Pulls the image
resource "docker_image" "nginx-image" {
  name = "nginx:latest"
}

# Create a container
resource "docker_container" "wwww" {
  image = docker_image.nginx-image.image_id
  name  = "www"
  ports {
    internal = 80
    external = 30089
  }
}
