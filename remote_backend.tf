terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "manderson-it-tfchip"
    workspaces {
      name = "hashicat-gcp"
    }
  }
}
