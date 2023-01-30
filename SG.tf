resource "aws_security_group" "aws_sg" {
  name   = var.allowed 
  vpc_id = aws_vpc.esraa_vpc.id

  ingress {
    from_port   = var.ingress-apache
    to_port     = var.ingress-apache
    protocol    = "tcp"
    cidr_blocks = [var.route_cidr_block]
  }

  ingress {
    from_port   = var.ingress-ssh
    to_port     = var.ingress-ssh
    protocol    = var.prtcl
    cidr_blocks = [var.route_cidr_block]
  }

  egress {
    from_port   = var.egress-port
    to_port     = var.egress-port
    protocol    = -1
    cidr_blocks = [var.route_cidr_block]
  }
}