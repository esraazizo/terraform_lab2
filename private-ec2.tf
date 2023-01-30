resource "aws_instance" "instance" {
  ami                         = var.ami-id
  instance_type               = var.inst-type
  subnet_id                   = aws_subnet.public_subnet[1].id
  vpc_security_group_ids      = [aws_security_group.aws_sg.id]
  user_data                   = <<EOF
   #!/bin/bash 
   yum update -y
   yum -y install httpd
   systemctl start httpd
   systemctl enable httpd

   EOF

  tags = {
    Name = var.name_ins_private
  }
}