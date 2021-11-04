resource "aws_subnet" "Public_Subnet" {
  vpc_id                  = aws_vpc.vpc_demo.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = "true" # to get public ip at the time of instance launch
  availability_zone       = "us-east-1a"
  tags = {
    Name = "Public-Subnet"
  }
}

resource "aws_subnet" "Private_Subnet" {
  vpc_id            = aws_vpc.vpc_demo.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "us-east-1b"
  tags = {
    Name = "Private-Subnet"
  }
}