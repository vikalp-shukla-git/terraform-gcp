resource "google_project_iam_custom_role" "terraform_custom_role" {
  project = var.project
  permissions = var.test
  role_id     = "terraform_custom_role"
  title       = "Terraform Custom Role"
  description = "Terraform Custom Role"
}