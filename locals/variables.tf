variable "ami_name" {
    type = string
    default = "ami-0b4f379183e5706b9"
}
variable "instance_names" {
    type = list
    default = ["mongoDB","web","redis","shipping","cart","user","payment","mysql","rabbitMQ","catalogue","dispatch"]
 }
variable "domain_name" {
    type =  string
    default = "myfirstroboshop.online"
}
variable "zone_id" {
    type = string
    default = "Z03923452CQN2MMZEEGCB"
}