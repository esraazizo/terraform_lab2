resource "aws_instance" "public_instance" {
  ami                         = var.ami-id
  instance_type               = var.inst-type
  subnet_id                   = aws_subnet.public_subnet[0].id
  vpc_security_group_ids      = [aws_security_group.aws_sg.id]
  associate_public_ip_address = var.public-ip
  user_data                   = <<EOF
   #!/bin/bash 
   yum update -y
   yum -y install httpd
   systemctl start httpd
   systemctl enable httpd

   EOF

  tags = {
    Name = var.name_ins_pub
  }
}