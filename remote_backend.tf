terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "chip-djl-2"
    workspaces {
      name = "hashicat-gcp"
    }
  }
}
