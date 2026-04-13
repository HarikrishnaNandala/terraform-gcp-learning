terraform {
  required_version = ">= 1.0"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}

# GCS Bucket — created by our CI/CD pipeline
resource "google_storage_bucket" "cicd_bucket" {
  name          = "${var.project_id}-cicd-demo"
  location      = var.region
  force_destroy = true

  labels = {
    managed_by  = "terraform"
    environment = var.environment
    pipeline    = "github-actions"
    phase       = "four"
  }
}
