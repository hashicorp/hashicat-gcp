provider "google" {
  project = "hashicat-gcp-dev"
  region  = "us-central1"
  zone    = "us-central1-a"
}

resource "google_compute_firewall" "allow-external-ssh" {
  name    = "allow-external-ssh"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["externalssh"]
}

resource "tls_private_key" "ssh-key" {
  algorithm   = "ECDSA"
  ecdsa_curve = "P384"
}

resource "google_compute_instance" "vm_instance" {
  name         = "terraform-instance"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-1804-lts"
    }
  }

  network_interface {
    network = "${google_compute_network.vpc_network.self_link}"
    access_config {
    }
  }

  provisioner "remote-exec" {
    connection {
      type        = "ssh"
      user        = "ubuntu"
      timeout     = "500s"
      private_key = tls_private_key.ssh-key.private_key_pem
      host        = self.network_interface.0.access_config.0.nat_ip
    }

    inline = [
      "touch /tmp/temp.txt",
    ]
  }

  tags = ["externalssh"]

  metadata = {
    ssh-keys = "ubuntu:${tls_private_key.ssh-key.public_key_openssh}"
  }

}

resource "google_compute_network" "vpc_network" {
  name                    = "terraform-network"
  auto_create_subnetworks = "true"
}