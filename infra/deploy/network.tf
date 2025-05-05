###########################################################
# Network Infrastructure
###########################################################
# This file contains the network infrastructure configuration for the project.
# It includes the creation of a VPC, subnets, internet gateway, route tables, and security groups.
# The resources are tagged with the project name and contact information for easy identification.


resource "aws_vpc" "main" {
  cidr_block           = "10.1.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true

}

###########################################################
# internet gateway needed for inbound access to the ALB
###########################################################

resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = "${local.prefix}-main"
  }
}
