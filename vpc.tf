module "network" {
  source  = "app.terraform.io/sjh/network/google"
  version = "3.4.0"
  # insert required variables here
<<<<<<< HEAD
  network_name = "sjh"
  project_id = "p-gti8ayw9nnlr-0"
=======

  network_name = "sjh"
  project_id = "p-ayvahmypy8yp-0"
>>>>>>> 4aed1ea6883fb649a3092cc0153e8697b1c42252
  subnets = [
  {
    subnet_name   = "gaurav-subnet"
    subnet_ip     = "10.100.10.0/24"
    subnet_region = var.region
  }
<<<<<<< HEAD
  ]
  
}

=======
]
}
>>>>>>> 4aed1ea6883fb649a3092cc0153e8697b1c42252
