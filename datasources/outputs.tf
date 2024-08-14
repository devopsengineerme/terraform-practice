output "ami_id" {
    value = data.aws_ami.example.id
}
output "aws_ami_id" {
    value = data.aws_ami.amazon.id
}
output "aws_vpc_info" {
    value = data.aws_vpc.default
}