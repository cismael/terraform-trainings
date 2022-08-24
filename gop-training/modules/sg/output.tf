output "sg_id" {
  value       = aws_security_group.sg.id
  description = "The SG id"
}

output "sg_arn" {
  value       = aws_security_group.sg.arn
  description = "The SG Arn"
}
