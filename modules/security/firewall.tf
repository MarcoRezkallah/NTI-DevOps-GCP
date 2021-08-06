resource "google_compute_firewall" "all-vpc-fw" {
  name        = "all-vpc-fw"
  network     = var.network_id
  target_tags = [var.vpc_tag]
  direction   = "INGRESS"

  allow {
    protocol = "tcp"
    ports    = ["8080"]
  }

}
