terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "mekmiotek_cloud"
    workspaces {
      name = "hashicat-gcp"
    }
  }
}
