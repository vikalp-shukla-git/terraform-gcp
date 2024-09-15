resource "google_project_iam_binding" "project" {
  project = var.project
  role    = "projects/PROJECT_ID/roles/terraform_custom_role" #Enter your Project ID here
  members = var.members
}
