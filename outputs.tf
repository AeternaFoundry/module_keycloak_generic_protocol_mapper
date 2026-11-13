output "generic_protocol_mappers_id" {
  description = "Map of id values across all generic_protocol_mappers, keyed the same as var.generic_protocol_mappers"
  value       = { for k, v in keycloak_generic_protocol_mapper.generic_protocol_mappers : k => v.id }
}
output "generic_protocol_mappers_client_id" {
  description = "Map of client_id values across all generic_protocol_mappers, keyed the same as var.generic_protocol_mappers"
  value       = { for k, v in keycloak_generic_protocol_mapper.generic_protocol_mappers : k => v.client_id }
}
output "generic_protocol_mappers_client_scope_id" {
  description = "Map of client_scope_id values across all generic_protocol_mappers, keyed the same as var.generic_protocol_mappers"
  value       = { for k, v in keycloak_generic_protocol_mapper.generic_protocol_mappers : k => v.client_scope_id }
}
output "generic_protocol_mappers_config" {
  description = "Map of config values across all generic_protocol_mappers, keyed the same as var.generic_protocol_mappers"
  value       = { for k, v in keycloak_generic_protocol_mapper.generic_protocol_mappers : k => v.config }
}
output "generic_protocol_mappers_name" {
  description = "Map of name values across all generic_protocol_mappers, keyed the same as var.generic_protocol_mappers"
  value       = { for k, v in keycloak_generic_protocol_mapper.generic_protocol_mappers : k => v.name }
}
output "generic_protocol_mappers_protocol" {
  description = "Map of protocol values across all generic_protocol_mappers, keyed the same as var.generic_protocol_mappers"
  value       = { for k, v in keycloak_generic_protocol_mapper.generic_protocol_mappers : k => v.protocol }
}
output "generic_protocol_mappers_protocol_mapper" {
  description = "Map of protocol_mapper values across all generic_protocol_mappers, keyed the same as var.generic_protocol_mappers"
  value       = { for k, v in keycloak_generic_protocol_mapper.generic_protocol_mappers : k => v.protocol_mapper }
}
output "generic_protocol_mappers_realm_id" {
  description = "Map of realm_id values across all generic_protocol_mappers, keyed the same as var.generic_protocol_mappers"
  value       = { for k, v in keycloak_generic_protocol_mapper.generic_protocol_mappers : k => v.realm_id }
}

