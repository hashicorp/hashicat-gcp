terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "beehiveco"
    workspaces {
      name = "hashicat-gcp"
    }
  }
}
