variable "project" {
  type = string
  default = "PROJECT_ID" #Enter your Project ID here
}

variable "members" {
    type = list(string)
    default = [
        "user:PRINCIPAL" #Enter your email address here
    ]
}