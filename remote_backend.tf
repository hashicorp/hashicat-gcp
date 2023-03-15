terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "bslee"
    workspaces {
      name = "hashicat-gcp"
    }
  }
}
