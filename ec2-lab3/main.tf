provider "aws" {
    region = "us-east-2"
}

resource "aws_instance" "tag-example" {
    ami = "ami-0ba62214afa52bec7"
    instance_type = "t2.nano"
    tags = {
        Name = "tag_machine"
        env = "stage"
    }
}