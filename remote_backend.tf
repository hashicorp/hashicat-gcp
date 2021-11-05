terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "mahi-tf-prod"
    workspaces {
      name = "hashicat-gcp"
    }
  }
}
