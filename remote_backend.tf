terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "mikepietruszka-org"
    workspaces {
      name = "hashicat-gcp"
    }
  }
}
