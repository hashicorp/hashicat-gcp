terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "hashicat-gcp-2309rj2owkr"
    workspaces {
      name = "hashicat-gcp"
    }
  }
}
