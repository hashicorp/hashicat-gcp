terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "dan-333-org"
    workspaces {
      name = "hashicat-gcp"
    }
  }
}
