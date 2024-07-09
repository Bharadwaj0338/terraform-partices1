provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "psb" {
  ami="ami-0604d81f2fd264c7b"
  instance_type = "t2.micro"
  count = 2
  key_name = "task"
  tags = {
    name ="test.${count.index}" # if we want count on tage name like test 1,test2 ect#
  }
}
variable "ami" {
  type    = string
  default = "ami-0604d81f2fd264c7b"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "psb" {
  type    = list(string)
  default = [ "dev","prod"]
}

resource "aws_instance" "test" {
  ami           = var.ami
  instance_type = var.instance_type
  count         = length(var.psb)
 #tags = {
#     #   Name = "webec2"
#       Name = "webec2-${count.index}"
#     }
# }
  tags = {
    Name = var.psb[count.index]
  }
}