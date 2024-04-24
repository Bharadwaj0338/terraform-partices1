#create vpc 
resource "aws_vpc" "test" {
    cidr_block = "10.0.0.0/16"
  tags = {
    name = "test"
  }
}  
#create IG and attach to vpc
resource "aws_internet_gateway" "test" {
    vpc_id = aws_vpc.test.id
  
}
#create subnet
resource "aws_subnet" "test" {
  vpc_id     = aws_vpc.test.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "test"
  }
}


#cretae Route tables & attach internet gateway to Rt
resource "aws_route_table" "test" {
    vpc_id = aws_vpc.test.id
    route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.test.id  #attache block ig to rt
     
  }
}
#subnet association 
resource "aws_route_table_association" "test" {
    route_table_id = aws_route_table.test.id #rout table association rt attach
    subnet_id = aws_subnet.test.id #rt association to subnet
  
}

# create instance ec2
resource "aws_instance" "dev" {
    ami = "ami-001843b876406202a"
    instance_type = "t2.micro"
    key_name = "ansible_priteces"
    tags = {
      Name = "test_ec2"
    }
}