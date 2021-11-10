output "ami" {
  value = "data.aws_ami.centos"
}

output "AZ" {
    value = data.aws_availability_zones.all.names
}