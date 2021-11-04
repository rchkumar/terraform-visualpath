resource "aws_security_group" "allow_http_ssh" {
  name        = "allow-http-ssh"
  description = "Allow Ingress Rules to allow SSH and HTTP Connections"
  vpc_id      = aws_vpc.vpc_demo.id
}