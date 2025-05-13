############################
# Database #
############################

resource "aws_db_subnet_group" "main" {
  name       = "${local.prefix}-main"
  subnet_ids = [aws_subnet.private_a.id, aws_subnet.private_b.id]


  tags = {
    Name = "${local.prefix}-db-subnet-group"
  }
}

resource "aws_security_group" "rds" {
  name        = "${local.prefix}-rds-inbound-access"
  description = "Allow access to the rds database instance"
  vpc_id      = aws_vpc.main.id

  ingress {
    from_port = 5432
    to_port   = 5432
    protocol  = "tcp"

  }

  tags = {
    Name = "${local.prefix}-db-security-group"
  }
}

resource "aws_db_instance" "main" {
  identifier                 = "${local.prefix}-db"
  db_name                    = "recipe"
  engine                     = "postgres"
  engine_version             = "15.3"
  instance_class             = "db.t4g.micro"
  allocated_storage          = 20
  storage_type               = "gp2"
  auto_minor_version_upgrade = true
  multi_az                   = false
  backup_retention_period    = 0
  db_subnet_group_name       = aws_db_subnet_group.main.name
  vpc_security_group_ids     = [aws_security_group.rds.id]

  username            = var.db_username
  password            = var.db_password
  skip_final_snapshot = true

  tags = {
    Name = "${local.prefix}-main"
  }
}
