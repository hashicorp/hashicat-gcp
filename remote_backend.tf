terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "prathik-org"
    workspaces {
      name = "hashicat-gcp"
    }
  }
}
