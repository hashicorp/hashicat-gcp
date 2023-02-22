terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "hashicat-gcp-handson"
    workspaces {
      name = "hashicat-gcp"
    }
  }
}
