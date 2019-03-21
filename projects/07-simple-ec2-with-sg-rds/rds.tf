resource "aws_db_instance" "db" {
  allocated_storage        = 20
  engine                   = "mysql"
  engine_version           = "5.7"
  instance_class           = "db.t3.micro"
  name                     = "db"
  username                 = "db_user"
  password                 = "db_password"
  backup_retention_period  = 7
  backup_window            = "01:00-02:00"
  skip_final_snapshot      = "true"
  vpc_security_group_ids   = ["${aws_security_group.sg-rds.id}"]
}
