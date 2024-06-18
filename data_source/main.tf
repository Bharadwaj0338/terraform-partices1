resource "aws_instance" "dev" {
    ami = "ami-00727e00d55c753cb"
        instance_type = "t2.micro"
    subnet_id = data.aws_subnet.dev.id
    security_groups = [data.aws_security_group.dev.id]

    tags = {
      Name = "dev-ec2"
    }
}