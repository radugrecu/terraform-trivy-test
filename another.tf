resource "aws_security_group_rule" "another_test0" {
    type        = "ingress"
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["1.2.3.4/32"]
    security_group_id = "${aws_security_group.test1.id}"
}

resource "aws_security_group_rule" "another_test1" {
    type        = "ingress"
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    security_group_id = "${aws_security_group.test1.id}"
}

// a comment


resource "aws_security_group_rule" "egress_test1" {
    type        = "egress"
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    security_group_id = "${aws_security_group.test1.id}"
}