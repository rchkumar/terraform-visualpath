resource "aws_security_group_rule" "ingress_ssh" {
  from_port         = 22
  protocol          = "tcp"
  security_group_id = aws_security_group.allow_http_ssh.id
  to_port           = 22
  type              = "ingress"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "ingress_http" {
  from_port         = 80
  protocol          = "tcp"
  security_group_id = aws_security_group.allow_http_ssh.id
  to_port           = 80
  type              = "ingress"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "egress_allow_all" {
  from_port         = 0
  protocol          = "-1"
  security_group_id = aws_security_group.allow_http_ssh.id
  to_port           = 0
  type              = "egress"
  cidr_blocks       = ["0.0.0.0/0"]
}