module "vpc" {
    source  = "terraform-google-modules/network/google//modules/vpc"
    version = "~> 2.0.0"

    project_id   = var.project 
    network_name = "redbeard-network-03"

    shared_vpc_host = false
}
