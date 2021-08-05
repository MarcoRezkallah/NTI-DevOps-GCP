output "public_subnet" {
  value = google_compute_subnetwork.public
}
output "private_subnet" {
  value = google_compute_subnetwork.private
}
