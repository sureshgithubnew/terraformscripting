provider "aws" {
  
}


variable "name" {
    default = "Helloo"

}

variable "number" {
    default = 3
}
data "aws_ami" "example" {
  executable_users = ["self"]
  most_recent      = true
  name_regex       = "Mycentosimage-7"
  owners           = ["self"]

  filter {
    name   = "name"
    values = ["Mycentosimage-7"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}
resource "aws_instance" "web" {
    ami = "${data.aws_ami.example.image_id"}"
    instance_type = "t2.micro"

output "name" {
  value = "${var.name}"
}
output "ami" {
  value = "${data.aws_ami.example.image_id}"
}