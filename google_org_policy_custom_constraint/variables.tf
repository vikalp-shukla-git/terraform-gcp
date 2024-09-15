variable "name" {
  type = string
  default = "custom.createOnlyN2DVMs"
}

variable "display_name" {
  type = string
  default = "Only N2D VMs allowed"
}

variable "description" {
  type = string
  default = "Restrict all VMs created to only use N2D machine types"
}

variable "condition" {
  type = string
  default = "resource.machineType.contains('/machineTypes/n2d')"
}

variable "parent" {
  type = string
  default = "organizations/ORGANIZATION_ID" #Enter your Organization ID here
}