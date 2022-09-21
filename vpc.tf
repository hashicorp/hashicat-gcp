module "vpc" {
  source  = "terraform-google-modules/network/google"
  version = "4.0"

  project_id   = var.project
  network_name = "gaurav-network"
  routing_mode = "REGIONAL"

  delete_default_internet_gateway_routes = "true"

  subnets = [
    {
      subnet_name           = "gaurav-subnet"
      subnet_ip             = "10.100.10.0/24"
      subnet_region         = var.project
      subnet_private_access = "false"
      subnet_flow_logs      = "false"
    },
  ]
}