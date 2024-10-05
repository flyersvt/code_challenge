provider "aws" {
  region = var.region
}

resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "public_1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.public_subnets["key1"].cidr
  availability_zone       = var.azs["key1"]
  map_public_ip_on_launch = true

  tags = {
    Name = var.public_subnets["key1"].name
  }
}

resource "aws_subnet" "public_2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.public_subnets["key2"].cidr
  availability_zone       = var.azs["key2"]
  map_public_ip_on_launch = true

  tags = {
    Name = var.public_subnets["key2"].name
  }
}

resource "aws_subnet" "public_3" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.public_subnets["key3"].cidr
  availability_zone       = var.azs["key3"]
  map_public_ip_on_launch = true

  tags = {
    Name = var.public_subnets["key3"].name
  }
}

resource "aws_subnet" "private_1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_subnets["key1"].cidr
  availability_zone = var.azs["key1"]

  tags = {
    Name = var.private_subnets["key1"].name
  }
}

resource "aws_subnet" "private_2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_subnets["key2"].cidr
  availability_zone = var.azs["key2"]

  tags = {
    Name = var.private_subnets["key2"].name
  }
}

resource "aws_subnet" "private_3" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_subnets["key3"].cidr
  availability_zone = var.azs["key3"]

  tags = {
    Name = var.private_subnets["key3"].name
  }
}

resource "aws_internet_gateway" "gateway" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = var.internet_gateway_name
  }
}

resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gateway.id
  }

  tags = {
    Name = var.public_route_table_name
  }
}

resource "aws_route_table_association" "public_subnet_assn_1" {
  subnet_id      = aws_subnet.public_1.id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_route_table_association" "public_subnet_assn_2" {
  subnet_id      = aws_subnet.public_2.id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_route_table_association" "public_subnet_assn_3" {
  subnet_id      = aws_subnet.public_3.id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_instance" "ec2_instance" {
  ami                    = var.instance_ami_id
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.public_1.id
  vpc_security_group_ids = ["${aws_security_group.code_challenge.id}"]

  tags = {
    Name = var.instance_name
  }
}