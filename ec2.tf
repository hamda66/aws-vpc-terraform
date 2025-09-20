
resource "aws_instance" "test_ins" {
  ## Amazon Linux instance
  ami = "ami-0971f6afca696ace6"
  region = var.region
  
  subnet_id = aws_subnet.public_subnet.id

  

}
