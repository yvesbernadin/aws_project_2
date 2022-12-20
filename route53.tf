# get hosted zone details
#terraform aws data hosted zone
data "aws_route53_zone" "aws_project_2" {
    name = var.domain_name

  }
# cretae a record set in route 53
# terraform aws route 53 record 

resource "aws_route53_record" "aws_project_2" {
  zone_id = data.aws_route53_zone.aws_project_2.zone_id 
  name    = var.record_name
  type    = "A"
  
  # alias {
  #  name                   = aws_elb.main.dns_name
#   zone_id                = aws_elb.main.zone_id
#     evaluate_target_health = true
#   }
}
 