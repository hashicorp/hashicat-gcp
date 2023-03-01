terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "jili"
    workspaces {
      name = "hashicat-gcp"
    }
  }
}
