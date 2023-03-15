//--------------------------------------------------------------------
// Variables
// variable "network_project_id" {}

//--------------------------------------------------------------------
// Modules
module "network" {
  source  = "app.terraform.io/bslee/network/google"
  version = "3.4.0"

  network_name = "gaurav-network"
  project_id = "123"
  subnets = [
  {
    subnet_name   = "gaurav-subnet"
    subnet_ip     = "10.100.10.0/24"
    subnet_region = var.region
  }
]
}
