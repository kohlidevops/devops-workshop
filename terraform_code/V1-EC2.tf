provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "demo-server" {
    ami = "ami-04f8d7ed2f1a54b14"
    instance_type = "t2.micro"
    key_name = "devopstep1"
}
