terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "gcp-eotabor"
    workspaces {
      name = "hashicat-gcp"
    }
  }
}
