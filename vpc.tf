
variable "cidr_block" {
default = "0.0.0.0"  
}

resource "aws_vpc" "hamda_vpc" {

    region = var.region
    cidr_block = "10.0.0.0/16"
    instance_tenancy = "default"

    tags = {
    "Enviroment" = "Test"
  }
    
}

resource "aws_subnet" "public_subnet" {
  vpc_id = aws_vpc.hamda_vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = data.aws_availability_zone.availability_zone.name
  
  
}

resource "aws_subnet" "private_subnet" {
  vpc_id = aws_vpc.hamda_vpc.id
  cidr_block = "10.0.7.0/24"
  availability_zone = data.aws_availability_zone.availability_zone.name
  //availability_zone_id = data.aws_availability_zone.availability_zone.id
  
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.hamda_vpc.id

  tags = {
    "Enviroment" = "Test"
  }
}

