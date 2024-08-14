resource "aws_instance" "web" {
  ami           = var.ami_name #devops-practice
  for_each = var.instance_names
  instance_type = each.value
  tags = {
    name = each.key
  } 
}
######################################################
resource "aws_route53_record" "www" {
  for_each = aws_instance.web
  zone_id = var.zone_id # Replace with your zone ID
  name    = "${each.key}.${var.domain_name}" # Replace with your subdomain, Note: not valid with "apex" domains, e.g. example.com
  type    = "A"
  ttl     = "1"
  records = [each.key == "web" ? each.value.public_ip : each.value.private_ip] 
}