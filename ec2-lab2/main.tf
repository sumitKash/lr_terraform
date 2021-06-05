provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "trexample" {
    ami = "ami-00399ec92321828f5"
    instance_type = "t2.nano"
}