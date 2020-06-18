resource "aws_route53_zone" "my-zone" {
  name = var.zone
  comment = "kawsar zone Managed by Terraform"
  tags = {
    Environment = "dev"
    Owner       = "kawsar@hashicorp.com"
    Name        = "Kawsar Demo Zone"
  }
}

resource "aws_route53_record" "my-records" {
  zone_id = aws_route53_zone.my-zone.zone_id
  for_each = var.static_records
  name    = each.key
  type    = "A"
  records = [each.value]
  ttl     = "300"
}
