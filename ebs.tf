resource "aws_ebs_volume" "test_ebs" {
  availability_zone = data.aws_availability_zone.availability_zone.id
  region = var.region

  tags = {
    "Enviroment" = "Test"
  }
}