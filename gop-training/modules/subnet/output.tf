output "sn_reserved_id" {
  value       = aws_subnet.sn_reserved.*.id
  description = "list of Reserved subnet ids"
}

output "sn_reserved_arn" {
  value       = aws_subnet.sn_reserved.*.arn
  description = "List of Reserved subnet arn"
}

output "sn_db_id" {
  value       = aws_subnet.sn_db.*.id
  description = "List of db subnet ids"
}

output "sn_rdb_arn" {
  value       = aws_subnet.sn_db.*.arn
  description = "db subnet arn"
}

output "sn_app_id" {
  value       = aws_subnet.sn_app.*.id
  description = "list of app subnet ids"
}

output "sn_app_arn" {
  value       = aws_subnet.sn_app.*.arn
  description = "List of app subnet arn"
}

output "sn_web_id" {
  value       = aws_subnet.sn_web.*.id
  description = "list web subnet ids"
}

output "sn_web_arn" {
  value       = aws_subnet.sn_web.*.arn
  description = "list web subnet arn"
}

output "natgw_id" {
  value       = aws_nat_gateway.natgw.*.id
  description = "list of Nat gateway id"
}
