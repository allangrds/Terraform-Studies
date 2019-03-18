provider "aws" {
  access_key = "YOUR_SECRET_KEY"
  region     = "us-east-1"
}

resource "aws_instance" "first_instance" {
  ami           = "ami-2757f631"
  instance_type = "t2.micro"
}
