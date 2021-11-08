resource "aws_key_pair" "hw_key" {
  key_name   = "hw_key"
  public_key = file("~/.ssh/id_rsa.pub")
}


resource "aws_instance" "web" {
  ami           = "ami-ae6272b8"
  instance_type = "t2.micro"
  ##vpc_security_group_ids = [aws_security_group.external_by_terraform.id]
  key_name  = aws_key_pair.hw_key.key_name
  user_data = file("userdata.sh")
}