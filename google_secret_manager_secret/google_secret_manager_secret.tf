resource "google_secret_manager_secret" "terraform_secret" {
  project = var.project
  secret_id = var.secret_id
replication {
    auto {}
  }
}
