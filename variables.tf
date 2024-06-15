variable "ofl_project_name" {
  type    = string
  default = "OpsFusionLabs"
}

variable "ofl_project_creator" {
  type    = string
  default = "Terraform"
}

variable "prj_sn" {
  type    = string
  default = "ofl"
}

variable "ofl_region" {
  description = "AWS Region"
  type        = string
  default     = "ap-south-1"
}

variable "ofl_dev_cidr-range" {
  type        = string
  default     = "10.17.0.0/24"
  description = "CIDR Block"
}

variable "ofl_prod_cidr-range" {
  type        = string
  default     = "10.11.0.0/24"
  description = "CIDR Block"
}


variable "ofl_public_subnet_cidr" {
  type    = list(string)
  default = ["10.17.0.0/26", "10.17.0.64/26"]

}

variable "ofl_AZ" {
  type    = list(string)
  default = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]

}

variable "ofl_private_subnet_cidr" {
  type    = list(string)
  default = ["10.17.0.128/26", "10.17.0.192/26"]

}

variable "domain-vpc" {
  type    = string
  default = "vpc"
}

variable "internet_cidr" {
  type    = string
  default = "0.0.0.0/0"

}

variable "ofl_ami" {
  description = "AWS ID"
  type        = string
  default     = "ami-0bb84b8ffd87024d8"
}

variable "ofl_instance_type" {
  description = "AWS Instance"
  type        = string
  default     = "t2.micro"
}

variable "tls-algorithm" {
  type    = string
  default = "RSA"
}

variable "rsa_bits" {
  type    = string
  default = "4096"
}

variable "inbound-port-numbers" {
  type    = list(number) #dictionary --> list and a #
  default = [80, 443, 8080, 3389, 3306, 5432, 9000]
}

variable "remote-backend-bucket" {
  type    = string
  default = "b84-advanced-docker-k8-terraform-projects"
}

variable "statefile-key-location" {
  type    = string
  default = "ofl"
}
