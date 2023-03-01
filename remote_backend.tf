terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "trade-me-hashicorp"
    workspaces {
      name = "hashicat-gcp"
    }
  }
}
