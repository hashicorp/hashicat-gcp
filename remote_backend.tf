terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "tf-rodriguez-5653"
    workspaces {
      name = "hashicat-gcp"
    }
  }
}
