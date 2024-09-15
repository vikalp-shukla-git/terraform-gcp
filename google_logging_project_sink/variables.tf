variable "project" {
  type = string
  default = "PROJECT_ID" #Enter your Project ID here
}

variable "name" {
  type = string
  default = "terraform_logging_sink"
}

variable "destination" {
  type = string
  default = "storage.googleapis.com/PROJECT_ID" #Enter your Project ID here
}

variable "filter" {
  type = string
  default = "resource.type = gce_instance AND resource.labels.project_id = PROJECT_ID AND log_name = projects/PROJECT_ID/logs/cloudaudit.googleapis.com%2Factivity AND protoPayload.methodName = v1.compute.instances.start OR protoPayload.methodName= v1.compute.instances.stop" #Enter your Project ID here
}