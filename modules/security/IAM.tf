resource "google_service_account" "compute-admin" {
  account_id   = "computeadmin"
  display_name = "Compute Admin"

}

resource "google_project_iam_member" "compute-admin-membership" {
  role   = "roles/compute.instanceAdmin.v1"
  member = "serviceAccount:${google_service_account.compute-admin.email}"
}
