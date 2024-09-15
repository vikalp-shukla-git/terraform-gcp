resource "google_logging_project_sink" "terraform_logging_sink" {
  project = var.project
  name = var.name
  destination = var.destination
  filter = var.filter
  unique_writer_identity = true
}
