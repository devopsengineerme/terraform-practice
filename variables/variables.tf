variable "ami_name" {
    type = string
    default = "ami-0b4f379183e5706b9"
}
variable "sg_name" {
    type = string
    default = "allow_tls"
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
variable "sg_description" {
    type = string
    default = "Allow TLS inbound traffic and all outbound traffic"
}
