variable "cloudwatch_event_endpoints" {
  description = <<EOT
Map of cloudwatch_event_endpoints, attributes below
Required:
    - name
    - event_bus (block):
        - event_bus_arn (required)
    - routing_config (block):
        - failover_config (required, block):
            - primary (required, block):
                - health_check (optional)
            - secondary (required, block):
                - route (optional)
Optional:
    - description
    - region
    - role_arn
    - replication_config (block):
        - state (optional)
EOT

  type = map(object({
    name        = string
    description = optional(string)
    region      = optional(string)
    role_arn    = optional(string)
    event_bus = list(object({
      event_bus_arn = string
    }))
    routing_config = object({
      failover_config = object({
        primary = object({
          health_check = optional(string)
        })
        secondary = object({
          route = optional(string)
        })
      })
    })
    replication_config = optional(object({
      state = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.cloudwatch_event_endpoints : (
        length(v.event_bus) >= 2 && length(v.event_bus) <= 2
      )
    ])
    error_message = "Each event_bus list must contain between 2 and 2 items"
  }
  # Note: 7 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

