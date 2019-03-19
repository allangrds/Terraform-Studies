resource "aws_security_group_rule" "allow_inbound_ssh" {
    type              = "ingress"
    from_port         = 22
    to_port           = 22
    protocol          = "tcp"
    security_group_id = "${aws_security_group.sg.id}"
    cidr_blocks       = "${var.inbound_source}"
}

resource "aws_security_group_rule" "allow_inbound_http" {
    type              = "ingress"
    from_port         = 80
    to_port           = 80
    protocol          = "tcp"
    security_group_id = "${aws_security_group.sg.id}"
    cidr_blocks       = "${var.inbound_source}"
}

resource "aws_security_group_rule" "allow_outbound_http" {
    type              = "egress"
    from_port         = 80
    to_port           = 80
    protocol          = "tcp"
    security_group_id = "${aws_security_group.sg.id}"
    cidr_blocks       = "${var.outbound_source}"
}