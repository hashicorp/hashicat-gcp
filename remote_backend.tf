terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "CAVN-Demo-Org"
    workspaces {
      name = "hashicat-gcp"
    }
  }
}
