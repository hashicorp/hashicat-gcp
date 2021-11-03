terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "TheGreatest"
    workspaces {
      name = "hashicat-gcp"
    }
  }
}
