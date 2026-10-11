variable "generic_protocol_mappers" {
  description = <<EOT
Map of generic_protocol_mappers, attributes below
Required:
    - config
    - name
    - protocol
    - protocol_mapper
    - realm_id
Optional:
    - client_id
    - client_scope_id
EOT

  type = map(object({
    config          = map(string)
    name            = string
    protocol        = string
    protocol_mapper = string
    realm_id        = string
    client_id       = optional(string)
    client_scope_id = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.generic_protocol_mappers : (
        contains(["openid-connect", "saml"], v.protocol)
      )
    ])
    error_message = "must be one of: \"openid-connect\", \"saml\""
  }
}

