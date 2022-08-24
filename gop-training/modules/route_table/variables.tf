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

variable "web_sn_name" {
  type        = list(string)
  default     = []
  description = "web tiers subnet name"
}

variable "igw_id" {
  type        = string
  default     = ""
  description = "IGW id"
}

variable "vpc_id" {
  type        = string
  default     = ""
  description = "vpc id"
}

variable "app_name" {
  type        = string
  default     = ""
  description = "Application name"
}

variable "app_sn_ids" {
  type        = list(string)
  default     = []
  description = "App subnets ids"
}

variable "db_sn_ids" {
  type        = list(string)
  default     = []
  description = "App subnets ids"
}

variable "reserved_sn_ids" {
  type        = list(string)
  default     = []
  description = "App subnets ids"
}

variable "web_sn_ids" {
  type        = list(string)
  default     = []
  description = "web subnets ids"
}

variable "natgw_ids" {
  type        = list(string)
  default     = []
  description = "App subnets ids"
}
