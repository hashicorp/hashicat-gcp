terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "hashicat-test-trademe-evgeny"
    workspaces {
      name = "hashicat-gcp"
    }
  }
}
