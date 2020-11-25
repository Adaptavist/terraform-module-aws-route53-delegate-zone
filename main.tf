data "aws_route53_zone" "main_zone" {
  provider = "aws.main"
  name     = var.main_route53_zone_name
}

resource "aws_route53_zone" "workload_zone" {
  provider = "aws.workload"

  name          = var.zone_name
  comment       = var.comment
  force_destroy = var.force_destroy

  tags = var.tags
}

resource "aws_route53_record" "workload" {
  provider = "aws.workload"

  zone_id = aws_route53_zone.workload_zone.zone_id
  name    = var.zone_name
  type    = "NS"
  records = aws_route53_zone.workload_zone.name_servers
  ttl     = var.ttl
}

resource "aws_route53_record" "main" {
  provider = "aws.main"

  zone_id = data.aws_route53_zone.main_zone.zone_id
  name    = var.zone_name
  type    = "NS"
  records = aws_route53_zone.workload_zone.name_servers
  ttl     = var.ttl
}
