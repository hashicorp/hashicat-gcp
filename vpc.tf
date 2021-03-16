module "vpc" {
  source  = "app.terraform.io/HDDH/network/google//modules/vpc"
  version = "2.5.0"

  project_id = var.project
  network_name = var.network_name

}