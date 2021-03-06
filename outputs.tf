output "main_route53_record_name" {
  description = "The name of the record in the main account"
  value       = aws_route53_record.main.name
}

output "main_route53_record_fqdn" {
  description = "The FQDN of the record in the main account"
  value       = aws_route53_record.main.fqdn
}
