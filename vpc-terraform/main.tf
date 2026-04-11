resource "google_compute_network" "vpc" {
  name = var.vpc_name
    auto_create_subnetworks = false
    description = "Learning VPC created with Terraform"
}

resource "google_compute_subnetwork" "subnet" {
  name = var.vpc_subnet
  ip_cidr_range = var.subnet_cidr
  region = var.region
  network = google_compute_network.vpc.id
}

resource "google_compute_firewall" "allow_SSH" {
  name = "${var.vpc_name}-allow-ssh"
  network = google_compute_network.vpc.name
  allow {
    protocol = "tcp"
    ports = ["22"]
  }

    source_ranges = ["0.0.0.0/0"]
    description = "Allow SSH from anywhere"
}

resource "google_compute_firewall" "allow_HTTP" {
  name = "${var.vpc_name}-allow-http"
  network = google_compute_network.vpc.name
  allow {
    protocol = "tcp"
    ports = ["80"]
  }

    source_ranges = ["0.0.0.0/0"]
  
}