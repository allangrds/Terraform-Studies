resource "aws_security_group" "sg-ec2" {
    name        = "sgec2"
    description = "Allow basic traffic"
}

resource "aws_security_group" "sg-rds" {
    name        = "sgrds"
    description = "Allow basic traffic"
}