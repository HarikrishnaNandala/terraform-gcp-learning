# Call VPC Module
module "vpc" {
  source = "../../modules/vpc"
  vpc_name = "${var.environment}-vpc"
  subnet_name = "${var.environment}-subnet"
  subnet_cidr = "10.0.1.0/24"
  region = var.region
  environment = var.environment
}

# Call Storage Module
module "storage" {
  source = "../../modules/storage"
  bucket_name = "${var.project_id}-${var.environment}-bucket"
  region = var.region
  environment = var.environment
  versioning_enabled = true
}
