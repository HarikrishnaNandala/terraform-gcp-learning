terraform {
  required_providers {
    google = {
        source = "hashicorp/google"
        version = "~> 5.0"
    }
  }
  required_version = ">= 1.0"
backend "gcs" {
  bucket = "terraform-gcp-learning-492920-state"
  prefix = "vpc-terraform/state"
  credentials = "../terraform-key.json"
}

}

provider "google" {
  credentials = file("../terraform-key.json")
  project = var.project_id
  region  = var.region
}