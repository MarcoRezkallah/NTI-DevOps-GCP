output "public_subnet" {
  value = google_compute_subnetwork.public
}
output "private_subnet" {
  value = google_compute_subnetwork.private
}

output "vpc_network" {
  value = google_compute_network.vpc_network
}
