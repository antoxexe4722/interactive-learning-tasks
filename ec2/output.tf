##output "all" {
## value = aws_instance.web.*
##}

output "AZ" {
  value = aws_instance.web.availability_zone
}

output "PUBLIC_IP" {
  value = aws_instance.web.public_ip
}

output "INSTANCE_ID" {
  value = aws_instance.web.id
}

//data "aws_region" "current" {}
//output "region" {
// value = data.aws_region.current.name
//}

output "region" {
  value = "us-east-1"
}

