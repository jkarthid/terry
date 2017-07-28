/* Setup our aws provider */
provider "aws" {
 access_key = ""
 secret_key = ""
 region = "us-west-1"
}
resource "aws_instance" "demo" {
 ami = "ami-7a85a01a"
 instance_type = "t2.micro"
 security_groups = ["launch-wizard-1"]
 key_name = "Final"
  root_block_device = {
  volume_size = 30
 }
 tags = {
 Name = "demo"
 }
}
