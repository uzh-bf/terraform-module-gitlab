resource "aws_route53_record" "gitlab-main" {
  zone_id = "${var.aws_route53_zone}"
  name    = "gitlab.${var.base_domain}"
  type    = "A"

  alias = {
    name                   = "${var.aws_route53_record_lb_name}"
    zone_id                = "${var.aws_route53_record_lb_zone_id}"
    evaluate_target_health = false
  }
}

resource "aws_route53_record" "gitlab-registry" {
  zone_id = "${var.aws_route53_zone}"
  name    = "registry.${var.base_domain}"
  type    = "A"

  alias = {
    name                   = "${var.aws_route53_record_lb_name}"
    zone_id                = "${var.aws_route53_record_lb_zone_id}"
    evaluate_target_health = false
  }
}
