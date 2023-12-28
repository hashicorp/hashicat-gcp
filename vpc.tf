module "network" {
  source  = "app.terraform.io/sjh/network/google"
  version = "3.4.0"
  # insert required variables here

  network_name = "sjh"
  project_id = "p-ayvahmypy8yp-0"
  subnets = [
  {
    subnet_name   = "gaurav-subnet"
    subnet_ip     = "10.100.10.0/24"
    subnet_region = var.region
  }
]
}