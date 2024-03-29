resource "aws_route53_zone" "my_zone" {
  name = "sunnyscles11.com"
}

output "hosted_zone_id" {
  value = aws_route53_zone.my_zone.zone_id
}

resource "aws_route53_record" "cname_record" {
  zone_id = aws_route53_zone.my_zone.zone_id
  name    = "cnamerecord"
  type    = "CNAME"
  ttl     = "300"
  records = [aws_lb.terramino.dns_name]
}