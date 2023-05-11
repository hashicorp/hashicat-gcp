terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "R3dB3ard-Ltd"
    workspaces {
      name = "hashicat-gcp"
    }
  }
}
