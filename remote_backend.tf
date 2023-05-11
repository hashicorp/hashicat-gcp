terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "example-org-244af6"
    workspaces {
      name = "hashicat-gcp"
    }
  }
}
