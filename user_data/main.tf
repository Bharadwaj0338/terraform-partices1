provider "aws" {
  region = "us-west-2"
}
resource "aws_instance" "testv" {
  ami = "ami-01572eda7c4411960"
  instance_type = "t2.micro"
  user_data = file("test.sh")
  key_name = "newkeys01"
  tags={ 
    name ="projectec2"
  }
}