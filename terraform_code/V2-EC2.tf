provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "demo-server" {
    ami = "ami-04f8d7ed2f1a54b14"
    instance_type = "t2.micro"
    key_name = "devopstep1"
    security_groups = [ "demo-sg" ]
}

resource "aws_security_group" "demo-sg" {
  name        = "demo-sg"
  description = "SSH Access"
  
  ingress {
    description      = "Shh access"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "ssh-prot"

  }
}
