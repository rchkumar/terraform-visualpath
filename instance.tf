resource "aws_instance" "webfromeast" {
  ami           = "ami-09e67e426f25ce0d7" # this is UBUNTU 20 id
  count         = 3
  instance_type = "t2.micro"

  tags = {
    Name = "Node from Default Region - East "

  }

}

resource "aws_instance" "webfromwest" {
  ami           = "ami-0d382e80be7ffdae5" # this is UBUNTU 20 id
  instance_type = "t2.micro"
  provider      = aws.west

  tags = {
    Name = "Node from West Region "

  }

}
