##################################################################################
# OUTPUTS
##################################################################################

output "mary_token_accessor_id" {
  value = consul_acl_token.mary.id
}

output "sally_token_accessor_id" {
  value = consul_acl_token.sally.id
}
