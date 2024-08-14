resource "aws_instance" "web" {
  ami           = var.ami_name #devops-practice
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow_tls.id] # this means list  
  tags = var.tags
}