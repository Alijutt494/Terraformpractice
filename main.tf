provider "aws"{
    region= var.aws_region
}
data "aws_ami" "amazon_linux"{
    most_recent = true
    owners= ["amazon"]
filter{
    name- "name"
    values=["amzn2-ami-hvm-*-x84_64-gp2"]
}
}
resource "aws_instance" "myec2"{
ami=data.aws_ami.amazon_linux.id
instance_type=var.instanace_type
tags={
name=var.instance_name
}
}