resource "google_sql_database_instance" "db_instance" {
  name   = "main-db"
  region = "us-central1"
  settings {
    tier = "db-f1-micro"
  }
}

resource "google_sql_database" "app_db" {
  name     = "application-database"
  instance = google_sql_database_instance.db_instance.name
}
