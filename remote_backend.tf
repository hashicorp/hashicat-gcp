terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "hc-lab"
    workspaces {
      name = "hashicat-gcp"
    }
  }
}
