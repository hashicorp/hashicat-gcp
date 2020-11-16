module "network" {
  source  = "app.terraform.io/ssandire-training/network/google"
  version = "2.5.0"
  network_name = gaurav-network
  routing_node ="GLOBAL"
  project_id = var.project
  subnets = [
  {
    subnet_name   = "gaurav-subnet"
    subnet_ip     = "10.100.10.0/24"
    subnet_region = var.region
  }
]
  # insert required variables here
 
}