resource "keycloak_generic_protocol_mapper" "generic_protocol_mappers" {
  for_each = var.generic_protocol_mappers

  config          = each.value.config
  name            = each.value.name
  protocol        = each.value.protocol
  protocol_mapper = each.value.protocol_mapper
  realm_id        = each.value.realm_id
  client_id       = each.value.client_id
  client_scope_id = each.value.client_scope_id
}

