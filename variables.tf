variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-2"
}

variable "public_subnets" {
  type = map(object({
    name = string
    cidr = string
    az   = string
  }))

  default = {
    key1 = {
      name = "Public 1"
      cidr = "10.0.224.0/24"
      az   = "us-east-2a"
    }
    key2 = {
      name = "Public 2"
      cidr = "10.0.225.0/24"
      az   = "us-east-2b"
    }
    key3 = {
      name = "Public 3"
      cidr = "10.0.226.0/24"
      az   = "us-east-2c"
    }
  }
}

variable "private_subnets" {
  type = map(object({
    name = string
    cidr = string
    az   = string
  }))

  default = {
    key1 = {
      name = "Private 1"
      cidr = "10.0.1.0/24"
      az   = "us-east-2a"
    }
    key2 = {
      name = "Private 2"
      cidr = "10.0.2.0/24"
      az   = "us-east-2b"
    }
    key3 = {
      name = "Private 3"
      cidr = "10.0.3.0/24"
      az   = "us-east-2c"
    }
  }
}

variable "vpc_name" {
  description = "VPC name"
  type        = string
  default     = "code_challenge"
}

variable "vpc_cidr" {
  description = "VPC CIDR"
  type        = string
  default     = "10.0.0.0/16"
}

variable "internet_gateway_name" {
  description = "Internet gateway name"
  type        = string
  default     = "Internet Gateway"
}

variable "public_route_table_name" {
  description = "Public route table name"
  type        = string
  default     = "Public Route Table"
}

variable "instance_name" {
  description = "EC2 instance name"
  type        = string
  default     = "NGINX"
}

variable "instance_ami_id" {
  description = "EC2 instance AMI ID"
  type        = string
  default     = "ami-0ea3c35c5c3284d82"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}
