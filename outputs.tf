output "fabric_connection_uuid" {
  description = "Unique identifier of the connection."
  value       = module.equinix-fabric-connection.primary_connection.uuid
}

output "fabric_connection_name" {
  description = "Name of the connection."
  value       = module.equinix-fabric-connection.primary_connection.name
}

output "network_edge_bgp_state" {
  description = "Network Edge device BGP peer state."
  value       = try(equinix_network_bgp.this[0].state, null)
}

output "network_edge_bgp_provisioning_status" {
  description = "Network Edge device BGP peering configuration provisioning status."
  value       = try(equinix_network_bgp.this[0].provisioning_status, null)
}

output "aws_dx_id" {
  description = "AWS Direct connection ID."
  value       = local.aws_dx_id
}

output "aws_vgw_id" {
  description = "AWS Virtual Gateway ID."
  value       = try(local.aws_vgw_id, null)
}

output "aws_vpc_id" {
  description = "AWS VPC ID."
  value       = try(local.aws_vpc_id, null)
}

output "aws_vif_id" {
  description = "AWS Private Virtual Interface ID."
  value       = try(aws_dx_private_virtual_interface.this[0].id, null)
}
