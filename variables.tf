variable "source_control_token_lookup" {
  description = <<EOT
Map of source_control_token_lookup, attributes below
Required:
    - type
EOT

  type = map(object({
    type = string
  }))
}

