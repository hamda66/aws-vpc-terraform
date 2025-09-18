
resource "aws_vpc" "hamda_vpc" {

    region = var.region
    cidr_block = "10.0.0.0/16"
    instance_tenancy = "default"

    tags = {
      Name = "testing"
    }
    
    }
  