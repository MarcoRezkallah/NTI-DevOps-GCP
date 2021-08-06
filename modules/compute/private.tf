resource "google_compute_instance" "private" {
  name         = "private"
  machine_type = "e2-small"
  zone         = "${var.private_subnet_region}-b"
  boot_disk {
    initialize_params {
      image = "ubuntu-2004-lts"
      type  = "pd-standard"
      size  = 10
    }

  }
  tags = ["vpc_network"]
  network_interface {
    subnetwork = var.private_subnet_id
  }

}
