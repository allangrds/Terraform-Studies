resource "aws_instance" "first_instance" {
  ami                     = "ami-2757f631"
  instance_type           = "t2.micro"
  security_groups         = ["${aws_security_group.sg-ec2.name}"]
}

resource "aws_eip" "ip" {
  instance = "${aws_instance.first_instance.id}"
}