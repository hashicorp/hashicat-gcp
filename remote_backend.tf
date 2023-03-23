terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "alphatf1604"
    workspaces {
        name = "hashicat-gcp"
    }
    
  }
}