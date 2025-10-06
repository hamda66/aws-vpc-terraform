


resource "aws_security_group" "ec2_security" {
  name = "ec2_secuirty"
  vpc_id = aws_vpc.hamda_vpc.id
}

resource "aws_vpc_security_group_ingress_rule" "ingress_rule" {
 security_group_id = aws_security_group.ec2_security.id
    from_port = 443
    to_port = 443
    ip_protocol = "tcp"
    cidr_ipv4 = [aws_vpc.hamda_vpc.cidr_block]
}

resource "aws_vpc_security_group_egress_rule" "egress_rule" {
   security_group_id = aws_security_group.ec2_security.id
   from_port = 0
    to_port = 0
    ip_protocol = "-1"
    cidr_ipv4 = ["0.0.0.0/0"]
}