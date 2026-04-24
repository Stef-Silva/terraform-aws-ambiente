
output "public_ip" {
  description = "IPS publicos"
  # value       = [for instance in aws_instance.this : instance.public_ip]
  # value = { for instance in aws_instance.this : instance.id => instance.public_ip }
  # value = { for instance in aws_instance.this : instance.tags["Name"] => instance.public_ip }
  value = { for key, instance in aws_instance.this : key => instance.public_ip... }
}
