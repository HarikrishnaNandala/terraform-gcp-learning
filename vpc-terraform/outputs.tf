output "vpc_name" {
  description = "VPC Network Name"
  value = google_compute_network.vpc.name
}
output "vpc_id" {
  description = "VPC Network ID"
  value = google_compute_network.vpc.id
}
output "subnet_name" {
  description = "Subnet Name"
  value = google_compute_subnetwork.subnet.name
}
output "subnet_cidr" {
  description = "Subnet CIDR Range"
  value = google_compute_subnetwork.subnet.ip_cidr_range
}
output "firewall_name" {
  description = "The name of the firewall rule"
  value = google_compute_firewall.allow_SSH.name
}