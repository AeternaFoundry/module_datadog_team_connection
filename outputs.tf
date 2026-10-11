output "team_connections_id" {
  description = "Map of id values across all team_connections, keyed the same as var.team_connections except keys with no id are omitted"
  value       = { for k, v in datadog_team_connection.team_connections : k => v.id if v.id != null && length(v.id) > 0 }
}
output "team_connections_connected_team" {
  description = "Map of connected_team values across all team_connections, keyed the same as var.team_connections except keys with no connected_team are omitted"
  value       = { for k, v in datadog_team_connection.team_connections : k => v.connected_team if v.connected_team != null && length(v.connected_team) > 0 }
}
output "team_connections_source" {
  description = "Map of source values across all team_connections, keyed the same as var.team_connections except keys with no source are omitted"
  value       = { for k, v in datadog_team_connection.team_connections : k => v.source if v.source != null && length(v.source) > 0 }
}
output "team_connections_team" {
  description = "Map of team values across all team_connections, keyed the same as var.team_connections except keys with no team are omitted"
  value       = { for k, v in datadog_team_connection.team_connections : k => v.team if v.team != null && length(v.team) > 0 }
}

