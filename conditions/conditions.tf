resource "aws_instance" "web" {
  ami           = var.ami_name #devops-practice
  instance_type = var.instance_name=="mongoDB"? "t3.medium" : "t2.micro"
  tags = var.tags
}