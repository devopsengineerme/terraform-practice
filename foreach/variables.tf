variable "ami_name" {
    type = string
    default = "ami-0b4f379183e5706b9"
}
variable "instance_names" {
    type = map
    default = {
        mongodb = "t3.small"
        web = "t2.micro"
        redis = "t2.micro"
        mysql = "t2.micro"
        shipping = "t3.small"
        dispatch = "t3.small"
        payment = "t2.micro"
        cart = "t2.micro"
        user = "t2.micro"
        rabbitmq =  "t2.micro"
        catalogue = "t3.small"
    }
 }
variable "domain_name" {
    type =  string
    default = "myfirstroboshop.online"
}
variable "zone_id" {
    type = string
    default = "Z03923452CQN2MMZEEGCB"
}