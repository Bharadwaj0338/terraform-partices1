resource "aws_instance" "psb" {
  ami = "ami-00727e00d55c753cb"
  instance_type = "t2.micro"
  key_name = "newkeys"
}

resource "aws_s3_bucket" "psb" {
  bucket = "081291dce"
}