terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "HashiCatCorp"
    workspaces {
      name = "hashicat-gcp"
    }
  }
}
