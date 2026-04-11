resource "google_storage_bucket" "terraform_state" {
  name = var.state_bucket_name
  location = var.region
  force_destroy = true

#Enable versioning to keep track of changes to the state file
  versioning {
    enabled = true
  }
  #Prevent accidental public access to the bucket
  uniform_bucket_level_access = true
labels = {
    environment = "learning"
    managed_by = "terraform"
    purpose = "terraform-state"
}
}
