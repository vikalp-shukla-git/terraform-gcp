resource "google_resource_manager_lien" "lien" {
  parent       = "projects/${google_project.project.number}"
  restrictions = ["resourcemanager.projects.delete"]
  origin       = var.origin
  reason       = var.reason
}

resource "google_project" "project" {
  project_id = var.project_id
  name       = var.name
}