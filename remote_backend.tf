terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "chinltong-work"
    workspaces {
      name = "hashicat-gcp"
    }
  }
}
