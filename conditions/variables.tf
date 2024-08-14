variable "ami_name" {
    type = string
    default = "ami-0b4f379183e5706b9"
}
variable "instance_name" {
    type = string
    default = "mongoDB"
}
variable "tags" {
  type = map
  default = {
    Name = "Hello Terraform"
    Project = "Roboshop"
    Environment = "DEV"
    Component = "Web"
    Terraform = "true"
  }
}