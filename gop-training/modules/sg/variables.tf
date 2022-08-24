variable "ingress_ports" {
  type        = list(number)
  default     = []
  description = "Security group ingress ports"
}

variable "sg_name" {
  type        = string
  default     = ""
  description = "The sg name"
}

variable "sg_description" {
  type        = string
  default     = ""
  description = "The sg Description"
}

variable "sg_tags" {
  type        = map(string)
  default     = {}
  description = "Security Group Tags"
}

variable "vpc_id" {
  type        = string
  default     = ""
  description = "The VPC id"
}
