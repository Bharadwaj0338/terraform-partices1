resource "aws_instance" "dev" {
    ami = "ami-001843b876406202a"
    instance_type = "t2.micro"
    key_name = "ansible_priteces"
   
    tags = {
      Name = "test_ec2"
    }
}