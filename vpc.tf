module "vpc" {
    source  = "terraform-google-network/modules/vpc"
    version = "~> 3.4.0"

    project_id   = var.project 
    network_name = "redbeard-network-04"

    shared_vpc_host = false
}
