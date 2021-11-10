 resource "aws_key_pair" "hw_key" {
  key_name   = "hw_key"
  public_key = file("~/.ssh/id_rsa.pub")
}


resource "aws_instance" "r1soft" {
  ami                    = data.aws_ami.centos.id
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.sg_r1soft_server.name]
  key_name               = aws_key_pair.hw_key.key_name
  
    
     //user_data              = file("r1soft.sh") ##Install r1soft 

    # to create EBS im the same AZ
     //resource "aws_ebs_volume" "example" {
     //  availability_zone = data.aws_availability_zones.all.names[0]
     //  size = 100
     // }
   provisioner "remote-exec" {
       connection {
           host = aws_instance.risoft.public_ip
           type = "ssh"
           user = "centos"
           private_key = file("~/.ssh/id_rsa")
       }
       inline = [
           #r1soft  
           "yum install r1soft-cdp-enterprise-server",
           "yum install unzip",
           "mv r1soft-enterpriseedition-linux64-3.18.2.zip cdp",
           "unzip r1soft-enterpriseedition-linux64-3.18.2.zip",
           "r1soft-setup --user DESIRED_USERNAME --pass DESIRED_PASSWORD",
           "/etc/init.d/cdp-server restart"
       ]
   }
}

