terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "pavlina-testing"
    workspaces {
      name = "hashicat-gcp"
    }
  }
}
