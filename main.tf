resource "datadog_team_connection" "team_connections" {
  for_each = var.team_connections

  source = each.value.source

  dynamic "connected_team" {
    for_each = each.value.connected_team != null ? each.value.connected_team : []
    content {
      id   = connected_team.value.id
      type = connected_team.value.type
    }
  }

  dynamic "team" {
    for_each = each.value.team != null ? each.value.team : []
    content {
      id   = team.value.id
      type = team.value.type
    }
  }
}

