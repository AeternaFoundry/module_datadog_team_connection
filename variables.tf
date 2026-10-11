variable "team_connections" {
  description = <<EOT
Map of team_connections, attributes below
Optional:
    - source
    - connected_team (block):
        - id (required)
        - type (required)
    - team (block):
        - id (required)
        - type (required)
EOT

  type = map(object({
    source = optional(string)
    connected_team = optional(list(object({
      id   = string
      type = string
    })))
    team = optional(list(object({
      id   = string
      type = string
    })))
  }))
}

