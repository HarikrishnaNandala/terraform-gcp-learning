output "bucket_name" {
  description = "The name of the created bucket"
  value       = google_storage_bucket.first_bucket.name
}

output "bucket_url" {
  description = "The URL of the created bucket"
  value       = google_storage_bucket.first_bucket.url
}