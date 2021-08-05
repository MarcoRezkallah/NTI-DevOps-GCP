resource "google_compute_subnetwork" "private" {
  name          = "private"
  ip_cidr_range = "172.19.0.0/24"
  region        = "us-central1"
  network       = google_compute_network.vpc_network.id
}

resource "google_compute_subnetwork" "public" {
  name          = "public"
  ip_cidr_range = "172.19.100.0/24"
  region        = "europe-west1"
  network       = google_compute_network.vpc_network.id
}
