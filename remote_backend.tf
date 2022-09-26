terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "107lt"
    workspaces {
      name = "hashicat-gcp"
    }
  }
}
