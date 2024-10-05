variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-2"
}

variable "az_1" {
  description = "AWS AZ 1"
  type        = string
  default     = "us-east-2a"
}

variable "az_2" {
  description = "AWS AZ 2"
  type        = string
  default     = "us-east-2b"
}

variable "az_3" {
  description = "AWS AZ 3"
  type        = string
  default     = "us-east-2c"
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

variable "public_subnet_cidr_1" {
  description = "Public subnet CIDR 1"
  type        = string
  default     = "10.0.224.0/24"
}

variable "public_subnet_cidr_2" {
  description = "Public subnet CIDR 2"
  type        = string
  default     = "10.0.225.0/24"
}

variable "public_subnet_cidr_3" {
  description = "Public subnet CIDR 3"
  type        = string
  default     = "10.0.226.0/24"
}

variable "private_subnet_cidr_1" {
  description = "Private subnet CIDR 1"
  type        = string
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr_2" {
  description = "Private subnet CIDR 2"
  type        = string
  default     = "10.0.2.0/24"
}

variable "private_subnet_cidr_3" {
  description = "Private subnet CIDR 3"
  type        = string
  default     = "10.0.3.0/24"
}

variable "public_subnet_az_1" {
  description = "Public subnet AZ 1"
  type        = string
  default     = "us-east-2a"
}

variable "public_subnet_az_2" {
  description = "Public subnet AZ 2"
  type        = string
  default     = "us-east-2b"
}

variable "public_subnet_az_3" {
  description = "Public subnet AZ 3"
  type        = string
  default     = "us-east-2c"
}

variable "private_subnet_az_1" {
  description = "Private subnet AZ 1"
  type        = string
  default     = "us-east-2a"
}

variable "private_subnet_az_2" {
  description = "Private subnet AZ 2"
  type        = string
  default     = "us-east-2b"
}

variable "private_subnet_az_3" {
  description = "Private subnet AZ 3"
  type        = string
  default     = "us-east-2c"
}

variable "public_subnet_name_1" {
  description = "Public subnet name 1"
  type        = string
  default     = "Public 1"
}

variable "public_subnet_name_2" {
  description = "Public subnet name 2"
  type        = string
  default     = "Public 2"
}

variable "public_subnet_name_3" {
  description = "Public subnet name 3"
  type        = string
  default     = "Public 3"
}

variable "private_subnet_name_1" {
  description = "Private subnet name 1"
  type        = string
  default     = "Private 1"
}

variable "private_subnet_name_2" {
  description = "Private subnet name 2"
  type        = string
  default     = "Private 2"
}

variable "private_subnet_name_3" {
  description = "Private subnet name 3"
  type        = string
  default     = "Private 3"
}
