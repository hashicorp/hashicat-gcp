module "network_subnets" {
  source  = "app.terraform.io/HDDH/network/google//modules/subnets"
  version = "2.5.0"
  
  project_id = var.project
  network_name = var.network_name
  
  subnets = [
  {
    subnet_name   = "gaurav-subnet"
    subnet_ip     = "10.100.10.0/24"
    subnet_region = var.region
  }
]

}