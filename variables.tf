variable "acm_certificate_arn" {
  description = "ACM Certificate Arn"
  type        = string
}

variable "api_gateway_domain_name" {
  description = "API Gateway Domain Name"
  type        = string
}

variable "enable_route53_record" {
  description = "Enable Route53 Record for Custom Domain Name"
  type        = bool
  default     = false
}

variable "route53_zone_id" {
  description = "Route53 Hosted Zone Id"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Resource Tags"
  type        = map(string)
}
