variable "tags" {
  type        = map(string)
  default     = {}
  description = "A set of tags that will be applied to all resources created by this module"
}

variable "zone_name" {
  type        = string
  description = "Route 53 zone name"
}

variable "comment" {
  type        = string
  default     = ""
  description = "A comment for the hosted zone"
}

variable "force_destroy" {
  type        = bool
  default     = false
  description = "Whether to destroy all records (possibly managed outside of Terraform) in the zone when destroying the zone."
}

variable "main_route53_zone_name" {
  type        = string
  description = "Route 53 zone name in the main account"
}

variable "ttl" {
  default     = string
  description = "The TTL of the record"
}