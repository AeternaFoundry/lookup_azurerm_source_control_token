data "azurerm_source_control_token" "source_control_token_lookup" {
  for_each = var.source_control_token_lookup

  type = each.value.type
}

