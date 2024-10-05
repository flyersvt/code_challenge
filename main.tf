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
  cidr_block              = var.public_subnet_cidr_1
  availability_zone       = var.public_subnet_az_1
  map_public_ip_on_launch = true

  tags = {
    Name = var.public_subnet_name_1
  }
}

resource "aws_subnet" "public_2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.public_subnet_cidr_2
  availability_zone       = var.public_subnet_az_2
  map_public_ip_on_launch = true

  tags = {
    Name = var.public_subnet_name_2
  }
}

resource "aws_subnet" "public_3" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.public_subnet_cidr_3
  availability_zone       = var.public_subnet_az_3
  map_public_ip_on_launch = true

  tags = {
    Name = var.public_subnet_name_3
  }
}

resource "aws_subnet" "private_1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_subnet_cidr_1
  availability_zone = var.private_subnet_az_1

  tags = {
    Name = var.private_subnet_name_1
  }
}

resource "aws_subnet" "private_2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_subnet_cidr_2
  availability_zone = var.private_subnet_az_2

  tags = {
    Name = var.private_subnet_name_2
  }
}

resource "aws_subnet" "private_3" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_subnet_cidr_3
  availability_zone = var.private_subnet_az_3

  tags = {
    Name = var.private_subnet_name_3
  }
}
