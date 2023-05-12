module "network_vpc" {
    source  = "terraform-google-modules/network/google//modules/vpc"
    version = "~> 3.0"

    project_id   = var.project 
    network_name = "redbeard-network-07"
    routing_mode = "GLOBAL"

    subnets = [
        {
            subnet_name           = "redbeard-subnet-07"
            subnet_ip             = "10.100.10.0/24"
            subnet_region         = var.region
        }
    ]
}
