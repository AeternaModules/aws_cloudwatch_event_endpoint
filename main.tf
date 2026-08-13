resource "aws_cloudwatch_event_endpoint" "cloudwatch_event_endpoints" {
  for_each = var.cloudwatch_event_endpoints

  name        = each.value.name
  description = each.value.description
  region      = each.value.region
  role_arn    = each.value.role_arn

  dynamic "event_bus" {
    for_each = each.value.event_bus
    content {
      event_bus_arn = event_bus.value.event_bus_arn
    }
  }

  routing_config {
    failover_config {
      primary {
        health_check = each.value.routing_config.failover_config.primary.health_check
      }
      secondary {
        route = each.value.routing_config.failover_config.secondary.route
      }
    }
  }

  dynamic "replication_config" {
    for_each = each.value.replication_config != null ? [each.value.replication_config] : []
    content {
      state = replication_config.value.state
    }
  }
}

