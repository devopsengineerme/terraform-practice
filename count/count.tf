resource "aws_instance" "web" {
  ami           = var.ami_name #devops-practice
  #count = 11
  count = length(var.instance_names)
  instance_type = var.instance_names[count.index] == "mongoDB" || var.instance_names[count.index] == "mysql" || var.instance_names[count.index] == "shipping" ? "t3.small" : "t2.micro"
  tags = {
    name = var.instance_names[count.index]
  } 
}
######################################################
resource "aws_route53_record" "www" {
  count = length(var.instance_names)
  zone_id = var.zone_id # Replace with your zone ID
  name    = "${var.instance_names[count.index]}.${var.domain_name}" # Replace with your subdomain, Note: not valid with "apex" domains, e.g. example.com
  type    = "A"
  ttl     = "1"
  records = [var.instance_names[count.index] == "web" ? aws_instance.web[count.index].public_ip : aws_instance.web[count.index].private_ip] 
}