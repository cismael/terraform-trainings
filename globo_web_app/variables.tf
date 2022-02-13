variable "aws_region" {
  type        = string
  description = "AWS region to use for resources"
  default     = "us-east-1"
}

variable "localstack_endpoint_url" {
  type        = string
  description = "URL address for localstack on local machine"
  default     = "http://localhost:4566"
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "vpc_cidr_block" {
  type        = string
  description = "CIDR Block to use for the VPC"
  default     = "10.0.0.0/16"
}

variable "vpc_subnets_cidr_block" {
  type        = list(string)
  description = "CIDR Block for subnets in VPC"
  default     = ["10.0.0.0/24", "10.0.1.0/24"]
}

variable "enable_dns_hostnames" {
  type        = bool
  description = "Enable DNS hostname"
  default     = true
}

variable "company" {
  type        = string
  description = "The company name for resource tagging"
  default     = "ICO in the cloud"
}

variable "project" {
  type        = string
  description = "The projet name for resource tagging"
}

variable "billing_code" {
  type        = string
  description = "The billing code to use for resource tagging"
}
