provider "google" {
  project = var.project
  region  = var.region
#  zone    = var.zone
}

resource "google_compute_network" "hashicat" {
  name = "${var.prefix}-hashicat"
  auto_create_subnetworks = false
}

# resource "google_compute_subnetwork" "default" {
#   name          = "compute-subnet"
#   ip_cidr_range = "10.0.1.0/24"
#   region        = "us-central1"
#   network       = google_compute_network.default.self_link
# }

# resource "tls_private_key" "ssh-key" {
#   algorithm = "RSA"
#   rsa_bits  = "4096"
# }

# resource "google_compute_firewall" "http-server" {
#   name    = "default-allow-http"
#   network = "default"

#   allow {
#     protocol = "tcp"
#     ports    = ["80"]
#   }

#   // Allow traffic from everywhere to instances with an http-server tag
#   source_ranges = ["0.0.0.0/0"]
#   target_tags   = ["http-server"]
# }

# resource "google_compute_instance" "hashicat" {
#   name         = "${var.prefix}-hashicat"
#   machine_type = var.machine_type
#   zone         = var.zone

#   boot_disk {
#     initialize_params {
#       image = "ubuntu-os-cloud/ubuntu-1804-lts"
#     }
#   }

#   network_interface {
#     network = "default"
#     access_config {
#     }
#   }

#   metadata = {
#     ssh-keys = "ubuntu:${chomp(tls_private_key.ssh-key.public_key_openssh)} terraform"
#   }

#   tags = ["http-server"]

# }

# resource "null_resource" "configure-cat-app" {
#   depends_on = [
#     google_compute_instance.hashicat,
#   ]

#   triggers = {
#     build_number = timestamp()
#   }

#   provisioner "file" {
#     source      = "files/"
#     destination = "/home/ubuntu/"

#     connection {
#       type        = "ssh"
#       user        = "ubuntu"
#       timeout     = "300s"
#       private_key = tls_private_key.ssh-key.private_key_pem
#       host        = google_compute_instance.hashicat.network_interface.0.access_config.0.nat_ip
#     }
#   }

#   provisioner "remote-exec" {
#     inline = [
#       "sudo add-apt-repository universe",
#       "sudo apt -y update",
#       "sudo apt -y install apache2",
#       "sudo systemctl start apache2",
#       "sudo chown -R ubuntu:ubuntu /var/www/html",
#       "chmod +x *.sh",
#       "PLACEHOLDER=${var.placeholder} WIDTH=${var.width} HEIGHT=${var.height} PREFIX=${var.prefix} ./deploy_app.sh",
#     ]

#     connection {
#       type        = "ssh"
#       user        = "ubuntu"
#       timeout     = "300s"
#       private_key = tls_private_key.ssh-key.private_key_pem
#       host        = google_compute_instance.hashicat.network_interface.0.access_config.0.nat_ip
#     }
#   }
# }