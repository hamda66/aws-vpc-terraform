


resource "aws_security_group" "ec2_security" {
  name = "ec2_secuirty"
  vpc_id = aws_vpc.hamda_vpc.id

 ingress = {
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_block = [aws_vpc.hamda_vpc.cidr_block]

 }

 egress = {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_block = ["0.0.0.0/0"]
 }

}