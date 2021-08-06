resource "google_storage_bucket" "main_bucket" {
  name          = "Main-Bucket"
  location      = "EU"
  
  uniform_bucket_level_access = true
}
