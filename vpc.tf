 module "network" {
  source  = "terraform-google-modules/network/google"
  version = "8.1.0"
  # insert required variables here

  network_name = "sjh"
  project_id = "p-gti8ayw9nnlr-0"
  subnets = [
  {
    subnet_name   = "gaurav-subnet"
    subnet_ip     = "10.100.10.0/24"
    subnet_region = var.region
  }
  ]
  
}
