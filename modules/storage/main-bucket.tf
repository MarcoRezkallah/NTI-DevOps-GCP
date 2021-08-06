resource "google_storage_bucket" "main_bucket" {
  name          = "main-bucket"
  location      = "EU"

  uniform_bucket_level_access = true
}
