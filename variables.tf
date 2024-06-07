variable "project_name"{
  type = string
}

variable "environment"{
  type = string
  default ="dev"
}

variable "common_tags"{
  type = map
}


variable "vpc_cidr" {
  type        = string
  default     = "10.0.0.0/16"
 
}

variable "enable_dns_hostnames" {
  type = bool
  default = true

}

variable "vpc_tags"{
  type = map
  default ={}
}
variable "igw_tags"{
  type = map
  default ={}
}

variable "public_subnet_cidrs"{
   type = list
   validation{
    condition = length(var.public_subnet_cidrs) == 2
    error_message = "enter 2 valid public subnet cidrs"
   }
}

variable "public_subnet_cidr_tags"{
  type = map
  default = {}

}

variable "private_subnet_cidrs"{
   type = list
   validation{
    condition = length(var.private_subnet_cidrs) == 2
    error_message = "enter 2 valid private subnet cidrs"
   }
}

variable "private_subnet_cidr_tags"{
  type = map
  default = {}

}

variable "database_subnet_cidrs"{
   type = list
   validation{
    condition = length(var.database_subnet_cidrs) == 2
    error_message = "enter 2 valid database subnet cidrs"
   }
}

variable "database_subnet_cidr_tags"{
  type = map
  default = {}

}

variable "database_subnet_group_tags"{
  type = map
  default = {}

}


variable "nat_gateway_tags"{
  type = map
  default = {}

}

variable "public_route_table_tags"{
  type = map
  default = {}

}

variable "private_route_table_tags"{
  type = map
  default = {}

}
variable "database_route_table_tags"{
  type = map
  default = {}

}

#peering
variable "is_peering_required"{
  type = bool
  default = false

}

variable "accepter_vpc_id"{
  type = string
  default = ""

}

variable "vpc_peering_tags"{
  type = map
  default = {}

}
