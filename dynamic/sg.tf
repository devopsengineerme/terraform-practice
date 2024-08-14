resource "aws_security_group" "dynamo-demo" {
  name        = "dynamo-demo"
  description = "dynamo-demo"
  dynamic "ingress" {
    for_each = var.ingress_rules 
    content {
      description = ingress.value["description"]
      from_port   = ingress.value["from_port"]
      to_port     = ingress.value["to_port"]
      protocol    = ingress.value["protocol"]
      cidr_blocks = ingress.value["cidr_blocks"]
    }
  }  
  egress  {
    from_port         = "0"
    to_port           = "0"
    protocol       = "tcp"
    cidr_blocks       = ["0.0.0.0/0"]
  }
  tags = {
    name = "dynamo-demo"
  }
}
  