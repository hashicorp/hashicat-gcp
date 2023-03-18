terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "chrip-cert-org"
    workspaces {
      name = "hashicat-gcp"
    }
  }
}
