variable "base_domain" {}
variable "aws_route53_zone" {}
variable "aws_route53_record_lb_name" {}

variable "gitlab_username" {
  default = "gitlab"
}

variable "bucket_prefix" {
  default = ""
}
