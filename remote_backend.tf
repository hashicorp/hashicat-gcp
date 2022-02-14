terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "fastly-ibissett"
    workspaces {
      name = "hashicat-gcp"
    }
  }
}
