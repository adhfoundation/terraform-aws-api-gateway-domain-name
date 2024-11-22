variable "acm_certificate_arn" {
  description = "ACM Certificate Arn"
  type        = string
}

variable "api_gateway_domain_name" {
  description = "API Gateway Domain Name"
  type        = string
}

variable "route53_zone_id" {
  description = "Route53 Hosted Zone Id"
  type        = string
}
