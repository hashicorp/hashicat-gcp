//--------------------------------------------------------------------
// Variables
variable "network_project_id" {}

//--------------------------------------------------------------------
// Modules
module "network" {
  source  = "app.terraform.io/bslee/network/google"
  version = "6.0.1"

  network_name = "bslee1-vpc-us-east1"
  project_id = "${var.network_project_id}"
  subnets = "bslee1-subnet"
}
