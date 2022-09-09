terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "adarsha-testing"
    workspaces {
      name = "hashicat-gcp"
    }
  }
}
