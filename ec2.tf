
resource "aws_ami" "test_ami" {
  name = "test-ami"
  virtualization_type = "hvm"
  root_device_name = "ec2-user"
  imds_support = "v2.0"

  ebs_block_device {
    device_name = "ec2-user"
    volume_size = 8
    

  }


}