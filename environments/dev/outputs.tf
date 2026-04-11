output "vpc_name" {
    description = "VPC Name"
    value = module.vpc.vpc_name
}

output "subnet_name" {
    description = "Subnet Name"
    value = module.vpc.subnet_name
}

output "bucket_name" {
    description = "Storage Bucket Name"
    value = module.storage.bucket_name
}

output "bucket_url" {
  description = "bucket URL"
  value = module.storage.bucket_url
}