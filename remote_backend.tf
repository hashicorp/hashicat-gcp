terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "atagunov-hashicorp-gcp"
    workspaces {
      name = "hashicat-gcp"
    }
  }
}
