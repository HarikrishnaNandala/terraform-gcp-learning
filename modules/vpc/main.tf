# ─────────────────────────────────────
# VPC Network
# ─────────────────────────────────────
resource "google_compute_network" "vpc" {
  name                    = var.vpc_name
  auto_create_subnetworks = false
  description             = "${var.environment} VPC created by Terraform"
}

# ─────────────────────────────────────
# Subnet
# ─────────────────────────────────────
resource "google_compute_subnetwork" "subnet" {
  name          = var.subnet_name
  ip_cidr_range = var.subnet_cidr
  region        = var.region
  network       = google_compute_network.vpc.id
}

# ─────────────────────────────────────
# Firewall — Allow SSH
# ─────────────────────────────────────
resource "google_compute_firewall" "allow_ssh" {
  name    = "${var.vpc_name}-allow-ssh"
  network = google_compute_network.vpc.name

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
  description   = "Allow SSH access"
}

# ─────────────────────────────────────
# Firewall — Allow HTTP
# ─────────────────────────────────────
resource "google_compute_firewall" "allow_http" {
  name    = "${var.vpc_name}-allow-http"
  network = google_compute_network.vpc.name

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  source_ranges = ["0.0.0.0/0"]
  description   = "Allow HTTP access"
}
