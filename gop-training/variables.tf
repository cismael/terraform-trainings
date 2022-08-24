variable "aws_region" {
  type        = string
  description = "Region for AWS Resources"
  default     = ""
}

variable "aws_profile" {
  type        = string
  description = "Aws CLI profile to use"
  default     = ""
}

variable "app_name" {
  type        = string
  default     = ""
  description = "Application name"
}


variable "vpc_cidr" {
  type        = string
  default     = ""
  description = "Vpc CIDR Block"
}

variable "vpc_name" {
  type        = string
  default     = ""
  description = "Vpc name"
}

variable "traffic_type" {
  type        = string
  default     = ""
  description = "Vpc flow log traffic type to capture"
}

variable "log_destination_type" {
  type        = string
  default     = "cloud-watch-logs"
  description = "Vpc flow log Destination"
}

variable "enabled_reserved_tiers" {
  type        = bool
  default     = true
  description = "Set to true to enabled reserved subnet creation"
}

variable "enabled_db_tiers" {
  type        = bool
  default     = true
  description = "Set to true to enabled db subnet creation"
}

variable "enabled_app_tiers" {
  type        = bool
  default     = true
  description = "Set to true to enabled app subnet creation"
}

variable "enabled_web_tiers" {
  type        = bool
  default     = true
  description = "Set to true to enabled resewebrved subnet creation"
}

variable "enabled_nat_gw" {
  type        = bool
  default     = true
  description = "Set to true to enabled nat gateway creation"
}

variable "azs" {
  type        = list(string)
  default     = []
  description = "Aws region availability zones"
}

variable "enabled_web_rt" {
  type        = bool
  default     = true
  description = "Set to true to enabled reserved web subnet route table creation"
}

variable "enabled_app_rt" {
  type        = bool
  default     = true
  description = "Set to true to enabled reserved web subnet route table creation"
}

variable "bastion_ingress_ports" {
  type        = list(number)
  default     = []
  description = "Bastion Security group ingress ports"
}

variable "bastion_instance_type" {
  type        = string
  default     = ""
  description = "The Bastion instance type"
}
