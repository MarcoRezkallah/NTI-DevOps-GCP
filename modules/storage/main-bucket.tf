resource "google_storage_bucket" "main_bucket" {
  name     = var.main_bucket_name
  location = "EU"

  uniform_bucket_level_access = true
}
