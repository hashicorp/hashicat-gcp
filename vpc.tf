module "vpc" {
    source  = "terraform-google-modules/network/google"
    version = "~> 3.4.0"

    project_id   = var.project 
    network_name = "rebeard-network"

    subnets = [
        {
            subnet_name           = "redbeard-subnet-01"
            subnet_ip             = "10.100.10.0/24"
            subnet_region         = var.region 
        }
    ]
}
