module "network_vpc" {
    source  = "terraform-google-modules/network/google"
    version = "~> 3.0"

    project_id   = var.project 
    network_name = "redbeard-network-06"
    routing_mode = "GLOBAL"

    subnets = [
        {
            subnet_name           = "redbeard-subnet-06"
            subnet_ip             = "10.100.10.0/24"
            subnet_region         = var.region
        }
    ]
}
