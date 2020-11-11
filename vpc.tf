module "network" {
  source  = "app.terraform.io/bpg002-training/network/google"
  version = "2.5.0"
  network_name = "bpg002-network"
  project_id = var.project
  subnets = [
  {
    subnet_name   = "bpg002-subnet"
    subnet_ip     = "10.100.10.0/24"
    subnet_region = var.region
  }
] 
}
