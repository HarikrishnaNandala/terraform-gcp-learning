resource "google_storage_bucket" "first_bucket" {
  name          = "${var.project_id}-first-bucket"
  location      = var.region
  force_destroy = true

  labels = {
    environment = "learning"
    managed_by  = "terraform"
  }
}