output "vpc_id" {
  description = "ID of VPC"
  value       = aws_vpc.main.id
}

output "instance_id" {
  description = "ID of EC2 instance"
  value       = aws_instance.ec2_instance.id
}

output "instance_public_ip" {
  description = "Public IP address of EC2 instance"
  value       = aws_instance.ec2_instance.public_ip
}
