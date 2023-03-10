terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "fawzi-test"
    workspaces {
      name = "hashicat-gcp"
    }
  }
}
