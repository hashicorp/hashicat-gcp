credentials "app.terraform.io" {
    # valid user API token:
    token = "57zVYaZhZwfYdw.atlasv1.CXh6WJ10KHgxy9TxAWy3E3Vrybga1CH5ppdpPaAINOeRqdqszA7uxr1dOtM4BHX98GI"
  }

module "network" {
  source  = "app.terraform.io/hashicat-gcp-handson/network/google"
  version = "6.0.1"
  network_name ="gaurav-network"
project_id = "var.project"
subnets = [
  {
    subnet_name   = "gaurav-subnet"
    subnet_ip     = "10.100.10.0/24"
    subnet_region = var.region
  }
]
}


