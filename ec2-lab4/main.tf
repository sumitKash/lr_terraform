##Reaource Addressing 

provider "aws" {
    region = "us-east-2"
}

resource "aws_instance" "tag-example" {
    ami = "ami-00399ec92321828f5"
    instance_type = "t2.nano"
    tags = {
        Name = "VM_with_vol"
        env = "stage"
    }
}

##adding EBS volume 
resource "aws_ebs_volume" "example" {
          availability_zone = "us-east-2b"
          size = "2" 
}

resource "aws_volume_attachment" "ebs_att" {
        device_name = "/dev/sdh"
        volume_id = "aws_ebs_volume.example.id"
        instance_id = "aws_instance.tag-example.id" 
}