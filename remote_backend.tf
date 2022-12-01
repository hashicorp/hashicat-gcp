terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "TestBupa-GCP"
    workspaces {
      name = "hashicat-gcp"
    }
  }
}
