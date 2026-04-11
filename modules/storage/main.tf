# ─────────────────────────────────────
# GCS Storage Bucket
# ─────────────────────────────────────
resource "google_storage_bucket" "bucket" {
  name          = var.bucket_name
  location      = var.region
  force_destroy = true

  versioning {
    enabled = var.versioning_enabled
  }

  uniform_bucket_level_access = true

  labels = {
    environment = var.environment
    managed_by  = "terraform"
  }
}
