terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "angellopez-sg"
    workspaces {
      name = "hashicat-gcp"
    }
  }
}
