module "vpc" {
  source  = "terraform-google-modules/network/google"
  version = "4.0"

  project_id   = var.project
  network_name = "gaurav-network"
  routing_mode = "REGIONAL"

  delete_default_internet_gateway_routes = "true"

  subnets = [
    {
      subnet_name           = "public"
      subnet_ip             = "10.0.0.0/24"
      subnet_region         = var.project
      subnet_private_access = "false"
      subnet_flow_logs      = "false"
    },
    {
      subnet_name           = "private"
      subnet_ip             = "10.0.1.0/24"
      subnet_region         = var.project
      subnet_private_access = "true"
      subnet_flow_logs      = "false"
    }
  ]

  routes = [
    {
      name              = "egress-internet"
      description       = "Default route through IGW to access internet"
      destination_range = "0.0.0.0/0"
      next_hop_internet = "true"
    }
  ]
}