resource "aws_route53_record" "blog" {
  zone_id = "Z10063133E1BPV0T4XZZ2"
  name    = "blog.werunpro.com"
  type    = "A"
  ttl     = "30"
  records = ["127.0.0.1"]
}