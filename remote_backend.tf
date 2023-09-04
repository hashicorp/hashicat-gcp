terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "kandla-gifari-msi"
    workspaces {
      name = "hashicat-gcp"
    }
  }
}
