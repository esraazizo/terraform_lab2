output "ec2-ip" {
  value       = aws_instance.public_instance.public_ip 
  
}