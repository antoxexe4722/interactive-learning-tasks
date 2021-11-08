resource "aws_route53_record" "wordpress" {
  zone_id = "Z10063133E1BPV0T4XZZ2"
  name    = "wordpress.werunpro.com"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.web.public_ip]
}