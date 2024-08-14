locals{
    number = length(var.instance_names)
    #instance_type = var.instance_names[count.index] == "mongoDB" || var.instance_names[count.index] == "mysql" || var.instance_names[count.index] == "shipping" ? "t3.small" : "t2.micro"
    #records = var.instance_names[count.index] == "web" ? aws_instance.web[count.index].public_ip : aws_instance.web[count.index].private_ip
    
}