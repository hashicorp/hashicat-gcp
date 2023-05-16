terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "usko-tf-cloud"
    workspaces {
      name = "hashicat-gcp"
    }
  }
}
