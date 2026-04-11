variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "region" {
  description = "GCP Project Region"
  type        = string
  default     = "us-central1"
}

variable "environment" {
  description = "Environment Name"
  type        = string
  default     = "dev"
}