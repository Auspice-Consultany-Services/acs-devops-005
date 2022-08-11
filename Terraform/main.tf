
resource "aws_instance" "app_server" {
  ami           = var.ami_id
  instance_type = var.ec2_type

  tags = {
    Name = "acs-tf1"
  }
}
