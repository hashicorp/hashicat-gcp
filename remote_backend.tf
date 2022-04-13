terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "at-gc-hashicat"
    workspaces {
      name = "hashicat-gcp"
    }
  }
}
