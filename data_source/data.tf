data "aws_security_group" "test" {
  id = "subnet-018fe2a4eb708befe"
}

data "aws_subnet" "test"{
    id ="sg-0cf479cd3d0d2563e"
}