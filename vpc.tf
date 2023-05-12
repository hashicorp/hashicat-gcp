module "vpc" {
    source  = "terraform-google-modules/network/google//modules/vpc" 
    version = "~> 3.4.0"

    project_id   = var.project 
    network_name = "redbeard-network"
}
