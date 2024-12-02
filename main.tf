resource "aws_api_gateway_domain_name" "this" {
  domain_name              = var.api_gateway_domain_name
  regional_certificate_arn = var.acm_certificate_arn
  tags                     = var.tags

  endpoint_configuration {
    types = ["REGIONAL"]
  }
}

resource "aws_route53_record" "this" {
  count   = var.enable_route53_record ? 1 : 0
  name    = aws_api_gateway_domain_name.this.domain_name
  type    = "A"
  zone_id = var.route53_zone_id

  alias {
    evaluate_target_health = true
    name                   = aws_api_gateway_domain_name.this.regional_domain_name
    zone_id                = aws_api_gateway_domain_name.this.regional_zone_id
  }
}
