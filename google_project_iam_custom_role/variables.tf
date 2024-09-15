variable "test" {
  type = list(string)
  default = [
    "compute.disks.get",
    "compute.disks.list",
    "compute.disks.create",
    "compute.disks.update",
    "compute.disks.delete"
  ]
  description = "permissions to be added from the defined variable"
}

variable "project" {
  type = string
  default = "PROJECT_ID" #Enter your Project ID here
}