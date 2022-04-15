terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "example-org-f22b91"
    workspaces {
      name = "hashicat-gcp"
    }
  }
}
