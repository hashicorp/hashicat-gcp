terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "jon-acme"
    workspaces {
      name = "hashicat-gcp"
    }
  }
}
