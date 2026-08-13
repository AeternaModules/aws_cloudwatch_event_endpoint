output "cloudwatch_event_endpoints_id" {
  description = "Map of id values across all cloudwatch_event_endpoints, keyed the same as var.cloudwatch_event_endpoints"
  value       = { for k, v in aws_cloudwatch_event_endpoint.cloudwatch_event_endpoints : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloudwatch_event_endpoints_arn" {
  description = "Map of arn values across all cloudwatch_event_endpoints, keyed the same as var.cloudwatch_event_endpoints"
  value       = { for k, v in aws_cloudwatch_event_endpoint.cloudwatch_event_endpoints : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "cloudwatch_event_endpoints_description" {
  description = "Map of description values across all cloudwatch_event_endpoints, keyed the same as var.cloudwatch_event_endpoints"
  value       = { for k, v in aws_cloudwatch_event_endpoint.cloudwatch_event_endpoints : k => v.description if v.description != null && length(v.description) > 0 }
}
output "cloudwatch_event_endpoints_endpoint_url" {
  description = "Map of endpoint_url values across all cloudwatch_event_endpoints, keyed the same as var.cloudwatch_event_endpoints"
  value       = { for k, v in aws_cloudwatch_event_endpoint.cloudwatch_event_endpoints : k => v.endpoint_url if v.endpoint_url != null && length(v.endpoint_url) > 0 }
}
output "cloudwatch_event_endpoints_event_bus" {
  description = "Map of event_bus values across all cloudwatch_event_endpoints, keyed the same as var.cloudwatch_event_endpoints"
  value       = { for k, v in aws_cloudwatch_event_endpoint.cloudwatch_event_endpoints : k => v.event_bus if v.event_bus != null && length(v.event_bus) > 0 }
}
output "cloudwatch_event_endpoints_name" {
  description = "Map of name values across all cloudwatch_event_endpoints, keyed the same as var.cloudwatch_event_endpoints"
  value       = { for k, v in aws_cloudwatch_event_endpoint.cloudwatch_event_endpoints : k => v.name if v.name != null && length(v.name) > 0 }
}
output "cloudwatch_event_endpoints_region" {
  description = "Map of region values across all cloudwatch_event_endpoints, keyed the same as var.cloudwatch_event_endpoints"
  value       = { for k, v in aws_cloudwatch_event_endpoint.cloudwatch_event_endpoints : k => v.region if v.region != null && length(v.region) > 0 }
}
output "cloudwatch_event_endpoints_replication_config" {
  description = "Map of replication_config values across all cloudwatch_event_endpoints, keyed the same as var.cloudwatch_event_endpoints"
  value       = { for k, v in aws_cloudwatch_event_endpoint.cloudwatch_event_endpoints : k => v.replication_config if v.replication_config != null && length(v.replication_config) > 0 }
}
output "cloudwatch_event_endpoints_role_arn" {
  description = "Map of role_arn values across all cloudwatch_event_endpoints, keyed the same as var.cloudwatch_event_endpoints"
  value       = { for k, v in aws_cloudwatch_event_endpoint.cloudwatch_event_endpoints : k => v.role_arn if v.role_arn != null && length(v.role_arn) > 0 }
}
output "cloudwatch_event_endpoints_routing_config" {
  description = "Map of routing_config values across all cloudwatch_event_endpoints, keyed the same as var.cloudwatch_event_endpoints"
  value       = { for k, v in aws_cloudwatch_event_endpoint.cloudwatch_event_endpoints : k => v.routing_config if v.routing_config != null && length(v.routing_config) > 0 }
}

