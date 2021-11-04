resource "aws_route_table" "Public_Route_Table" {
  vpc_id = aws_vpc.vpc_demo.id

  tags = {
    Name = "Public-Route"
  }
}

resource "aws_route_table" "Private_Route_Table" {
  vpc_id = aws_vpc.vpc_demo.id

  tags = {
    Name = "Private-Route"
  }
}

resource "aws_route" "public_route" {
  route_table_id         = aws_route_table.Public_Route_Table.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.igw.id
  depends_on             = [aws_internet_gateway.igw]
}

resource "aws_route_table_association" "public_rt_assoc" {
  subnet_id      = aws_subnet.Public_Subnet.id
  route_table_id = aws_route_table.Public_Route_Table.id


}

resource "aws_route_table_association" "private_rt_assoc" {
  subnet_id      = aws_subnet.Private_Subnet.id
  route_table_id = aws_route_table.Private_Route_Table.id


}
