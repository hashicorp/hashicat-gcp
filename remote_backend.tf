terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "revionics-jduvall"
    workspaces {
      name = "hashicat-gcp"
    }
  }
}
