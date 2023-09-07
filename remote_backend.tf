terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "gcp-org"
    workspaces {
      name = "hashicat-gcp"
    }
  }
}
