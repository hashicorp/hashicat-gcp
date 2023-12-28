terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "sjh"
    workspaces {
      name = "hashicat-gcp"
    }
  }
}
