module "network_vpc" {
  source  = "app.terraform.io/HDDH/network/google//modules/vpc"
  version = "3.2.0"
  subnets = [
  {
    subnet_name   = "gaurav-subnet"
    subnet_ip     = "10.100.10.0/24"
    subnet_region = var.region
  }
]
}