terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "trademe-cats"
    workspaces {
      name = "hashicat-gcp"
    }
  }
}
