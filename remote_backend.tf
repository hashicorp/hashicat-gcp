terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "ourorganisation"
    workspaces {
      name = "hashicat-gcp"
    }
  }
}
