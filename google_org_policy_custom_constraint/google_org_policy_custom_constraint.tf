resource "google_org_policy_custom_constraint" "constraint" {

  name         = var.name
  parent       = var.parent
  display_name = var.display_name
  description  = var.description

  action_type    = "ALLOW"
  condition      = var.condition
  method_types   = ["CREATE"]
  resource_types = ["compute.googleapis.com/Instance"]
}

resource "google_org_policy_policy" "bool" {

  name   = "organizations/ORGANIZATION_ID/policies/${google_org_policy_custom_constraint.constraint.name}" #Enter your Organization ID here
  parent = var.parent

  spec {
    rules {
      enforce = "TRUE"
    }
  }
}