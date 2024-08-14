#output "instance_info" {
#  value = aws_instance.web
#}
################################################################
output "instance_ids" {
  value = aws_instance.web.id
}
output "public_ips" {
  value = aws_instance.web.public_ip
}
output "private_ips" {
  value = aws_instance.web.private_ip
}
##########################################
# Outputs:

# instance_ids = "i-0f0784337522a7629"
# private_ips = "172.31.89.162"
# public_ips = "54.211.130.171"