terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "jitc-chip-training"
    workspaces {
      name = "hashicat-gcp"
    }
  }
}
