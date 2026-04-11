variable "project_id" {
  description = "GCP project name"
  type = string
}
variable "region" {
  description = "GCP Project region"
  type = string
  default = "us-central1"
}
variable "state_bucket_name" {
  description = "Name of the GCS bucket for the terraform state"
  type = string
}