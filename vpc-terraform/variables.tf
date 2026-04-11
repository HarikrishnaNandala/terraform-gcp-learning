variable "project_id" {
    description = "GCP Project ID"
    type = string
}

variable "region" {
    description = "GCP Project Region"
    type = string
    default = "us-central1"
}

variable "zone" {
    description = "GCP Project Zone"
    type = string
    default = "us-central1-a"
  
}

variable "vpc_name" {
  description = "Name of the VPC Network"
  type = string
  default = "learning-vpc"
}

variable "vpc_subnet" {
  description = "Name of the subnet"
  type = string
  default = "learning-subnet"
}
variable "subnet_cidr" {
    description = "CIDR block for the subnet"
    type = string
    default = "10.0.1.0/24"
}