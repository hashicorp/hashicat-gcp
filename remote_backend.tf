terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "connect-ops-reporting"
    workspaces {
      name = "hashicat-gcp"
    }
  }
}
