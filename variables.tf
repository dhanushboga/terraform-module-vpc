variable "vpc_cidr" {
  
}

variable "enable_dns_hostnames" {
  default = "true"
}


variable "project_name" {
  
}

variable "environment" {
  
}

# optional
variable "common_tags" {
  type = map
  default = {}
  
}

variable "vpc_tags" {
  default = {
    
  }
}

variable "igw_tags" {
  default = {}
}

variable "public_subnet_cidr" {
  type = list
  validation {
    condition     = length(var.public_subnet_cidr) == 2 
    error_message = "Please provide aleast 2 valid public subnet CIDR's "
  }
}

variable "public_subnet_tags" {
  default = {}
}

variable "private_subnet_cidr" {
  type = list
  validation {
    condition     = length(var.private_subnet_cidr) == 2 
    error_message = "Please provide aleast 2 valid private subnet CIDR's "
  }
}

variable "private_subnet_tags" {
  default = {}
}

variable "database_subnet_cidr" {
  type = list
  validation {
    condition     = length(var.database_subnet_cidr) == 2 
    error_message = "Please provide aleast 2 valid database subnet CIDR's "
  }
}

variable "database_subnet_tags" {
  default = {}
}

variable "nat_tags" {
  default = {}
}

variable "public_route_tags" {
  default = {}
}

variable "private_route_tags" {
  default = {}
}

variable "database_route_tags" {
  default = {}
}

variable "is_peering_required" {
  default = false
}

variable "peering_tags" {
  default = {}
}