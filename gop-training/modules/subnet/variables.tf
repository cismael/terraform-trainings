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

variable "enabled_auto_assign_ipv6" {
  type        = bool
  default     = true
  description = "Set to true to enabled auto assign ipv6 ip address on creation"
}

variable "enabled_auto_assign_ipv4" {
  type        = bool
  default     = true
  description = "Set to true to enabled auto assign ipv4 ip address on creation"
}

variable "enabled_nat_gw" {
  type        = bool
  default     = true
  description = "Set to true to enabled nat gateway creation"
}

variable "reserved_sn_name" {
  type        = list(string)
  default     = []
  description = "Reserved subnet name"
}

variable "reserved_sn_cidr" {
  type        = list(string)
  default     = []
  description = "Reserved subnet cidr"
}

variable "reserved_sn_ipv6" {
  type        = list(string)
  default     = []
  description = "Reserved subnet ipv6 cidr"
}

variable "azs" {
  type        = list(string)
  default     = []
  description = "Aws region availability zones to use"
}

variable "vpc_id" {
  type        = string
  default     = ""
  description = "vpc id"
}

variable "vpc_ipv6_cidr" {
  type        = string
  default     = ""
  description = "vpc ipv6 cidr block"
}

variable "db_sn_name" {
  type        = list(string)
  default     = []
  description = "Database tiers subnet name"
}

variable "db_sn_cidr" {
  type        = list(string)
  default     = []
  description = "Database tiers subnet cidr"
}

variable "db_sn_ipv6" {
  type        = list(string)
  default     = []
  description = "Database tiers subnet ipv6 cidr"
}

variable "app_sn_name" {
  type        = list(string)
  default     = []
  description = "application tiers subnet name"
}

variable "app_sn_cidr" {
  type        = list(string)
  default     = []
  description = "application tiers subnet cidr"
}

variable "app_sn_ipv6" {
  type        = list(string)
  default     = []
  description = "application tiers subnet ipv6 cidr"
}

variable "web_sn_name" {
  type        = list(string)
  default     = []
  description = "web tiers subnet name"
}

variable "web_sn_cidr" {
  type        = list(string)
  default     = []
  description = "web tiers subnet cidr"
}

variable "web_sn_ipv6" {
  type        = list(string)
  default     = []
  description = "web tiers subnet ipv6 cidr"
}

variable "eip_id" {
  type        = string
  default     = ""
  description = "eip id"
}

variable "app_name" {
  type        = string
  default     = ""
  description = "Application name"
}
