output "source_control_token_lookup_id" {
  description = "Map of id values across all source_control_token_lookup, keyed the same as var.source_control_token_lookup"
  value       = { for k, v in data.azurerm_source_control_token.source_control_token_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "source_control_token_lookup_token" {
  description = "Map of token values across all source_control_token_lookup, keyed the same as var.source_control_token_lookup"
  value       = { for k, v in data.azurerm_source_control_token.source_control_token_lookup : k => v.token if v.token != null && length(v.token) > 0 }
  sensitive   = true
}
output "source_control_token_lookup_token_secret" {
  description = "Map of token_secret values across all source_control_token_lookup, keyed the same as var.source_control_token_lookup"
  value       = { for k, v in data.azurerm_source_control_token.source_control_token_lookup : k => v.token_secret if v.token_secret != null && length(v.token_secret) > 0 }
  sensitive   = true
}
output "source_control_token_lookup_type" {
  description = "Map of type values across all source_control_token_lookup, keyed the same as var.source_control_token_lookup"
  value       = { for k, v in data.azurerm_source_control_token.source_control_token_lookup : k => v.type if v.type != null && length(v.type) > 0 }
}

