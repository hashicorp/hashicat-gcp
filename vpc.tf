module "network" {
  source  = "app.terraform.io/HDDH/network/google"
  version = "2.5.0"
  subnets = [
  {
    subnet_name   = "gaurav-subnet"
    subnet_ip     = "10.100.10.0/24"
    subnet_region = var.region
  }
]
}