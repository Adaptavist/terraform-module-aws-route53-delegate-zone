## AWS Route53 Delegate Zone Module

Module creates: 
 - Route53 zone in the workload account
 - Route53 zone record in the workload account
 - Route53 zone record in the main account, linked to a main account Route53 zone
 
## Providers

| Name         | Description 
|--------------|-----------------------------------------------
| aws.main     | AWS provider with main account assume role
| aws.workload | AWS provider with workload account assume role

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| tags | Tag you want to apply to taggable resources | `map(string)` | `{}` | no |
| zone_name | Route 53 zone name | `string` | n/a | yes |
| comment | A comment for the hosted zone | `string` | `""` | no |
| force_destroy | Whether to destroy all records (possibly managed outside of Terraform) in the zone when destroying the zone. | `bool` | `false` | no |
| main_route53_zone_name | Route 53 zone name in the main account | `string` | n/a | yes |
| ttl | The TTL of the record | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| main\_route53\_record\_fqdn | The FQDN of the record in the main account |
| main\_route53\_record\_name | The name of the record in the main account |
| workload\_route53\_record\_fqdn | The FQDN of the record in the workload account |
| workload\_route53\_record\_name | The name of the record in the workload account |
