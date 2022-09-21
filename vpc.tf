module "vpc" {
  source  = "terraform-google-modules/network/google"
  version = "4.0"

  project_id   = var.project
  network_name = "gaurav-network"
  
  

  subnets = [
    {
      subnet_name           = "subnet"
      subnet_ip             = "10.100.10.0/24"
      subnet_region         = var.project
      
    }
  ]
}