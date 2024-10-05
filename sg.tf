resource "aws_security_group" "code_challenge" {
  name        = "Code challenge"
  description = "Services for code challenge"
  vpc_id      = aws_vpc.main.id
  tags = {
    Name = "Code challenge"
  }
}

resource "aws_vpc_security_group_ingress_rule" "ingress_ssh" {
  security_group_id = aws_security_group.code_challenge.id

  cidr_ipv4   = "0.0.0.0/0"
  from_port   = 22
  ip_protocol = "tcp"
  to_port     = 22
}

resource "aws_vpc_security_group_ingress_rule" "ingress_http" {
  security_group_id = aws_security_group.code_challenge.id

  cidr_ipv4   = "0.0.0.0/0"
  from_port   = 80
  ip_protocol = "tcp"
  to_port     = 80
}

resource "aws_vpc_security_group_egress_rule" "egress_all" {
  security_group_id = aws_security_group.code_challenge.id

  cidr_ipv4   = "0.0.0.0/0"
  from_port   = 0
  ip_protocol = "-1"
  to_port     = 0
}
