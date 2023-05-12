terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "Terraform_Cloud_organization_Training"
    workspaces {
      name = "hashicat-gcp"
    }
  }
}
