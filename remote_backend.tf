terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "20221025-hashi-workshop"
    workspaces {
      name = "hashicat-gcp"
    }
  }
}
