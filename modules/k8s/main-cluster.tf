resource "google_container_cluster" "main_cluster" {
  name               = "main-cluster"
  location           = var.region
  initial_node_count = 2

  network    = var.network_id
  subnetwork = var.subnetwork_id
  node_config {
    disk_size_gb = 20
    machine_type = "e2-medium"
    tags         = [var.vpc_tag]
  }

  timeouts {
    create = "30m"
    update = "40m"
  }
}
