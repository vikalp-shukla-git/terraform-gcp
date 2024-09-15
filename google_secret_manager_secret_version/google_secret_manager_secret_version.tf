resource "google_secret_manager_secret" "terraform_secret" {
  project = var.project
  secret_id = var.secret_id
  replication {
    auto {}
  }
}

resource "google_secret_manager_secret_version" "terraform_secret" {
  secret      = google_secret_manager_secret.terraform_secret.id
  secret_data = var.secret_data
}

