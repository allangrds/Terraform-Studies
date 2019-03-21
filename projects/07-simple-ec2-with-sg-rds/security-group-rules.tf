resource "aws_security_group_rule" "ec2_allow_inbound_ssh" {
    type              = "ingress"
    from_port         = 22
    to_port           = 22
    protocol          = "tcp"
    security_group_id = "${aws_security_group.sg-ec2.id}"
    cidr_blocks       = "${var.inbound_source}"
}

resource "aws_security_group_rule" "ec2_allow_inbound_http" {
    type              = "ingress"
    from_port         = 80
    to_port           = 80
    protocol          = "tcp"
    security_group_id = "${aws_security_group.sg-ec2.id}"
    cidr_blocks       = "${var.inbound_source}"
}

resource "aws_security_group_rule" "ec2_allow_outbound_http" {
    type              = "egress"
    from_port         = 80
    to_port           = 80
    protocol          = "tcp"
    security_group_id = "${aws_security_group.sg-ec2.id}"
    cidr_blocks       = "${var.outbound_source}"
}

resource "aws_security_group_rule" "ec2_allow_outbound_db" {
    type                     = "egress"
    from_port                = 3306
    to_port                  = 3306
    protocol                 = "tcp"
    security_group_id        = "${aws_security_group.sg-ec2.id}"
    source_security_group_id = "${aws_security_group.sg-rds.id}"
}

resource "aws_security_group_rule" "db_allow_inbound" {
    type                     = "ingress"
    from_port                = 3306
    to_port                  = 3306
    protocol                 = "tcp"
    security_group_id        = "${aws_security_group.sg-rds.id}"
    source_security_group_id = "${aws_security_group.sg-ec2.id}"
}

resource "aws_security_group_rule" "db_allow_outbound" {
    type                     = "egress"
    from_port                = 3306
    to_port                  = 3306
    protocol                 = "tcp"
    security_group_id        = "${aws_security_group.sg-rds.id}"
    source_security_group_id = "${aws_security_group.sg-ec2.id}"
}