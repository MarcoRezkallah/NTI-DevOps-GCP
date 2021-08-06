resource "google_compute_instance" "public" {
  name         = "public"
  machine_type = "e2-small"
  zone         = "${var.public_subnet_region}-b"
  boot_disk {
    initialize_params {
      image = "ubuntu-2004-lts"
      type  = "pd-standard"
      size  = 10
    }

  }

  tags = ["vpc_network"]

  network_interface {
    subnetwork = var.public_subnet_id

    access_config {
      // Ephemeral IP
    }
  }

}
