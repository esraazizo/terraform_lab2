variable "vpc-cidr-block" {
  type = string
}
variable "pf" {
    type = string 
}
variable "rg" {
    type = string
}
variable "name_ins_private" {
    type = string
}
variable "name_ins_pub" {
    type = string
}
variable "vpc-name" {
    type = string
}
variable "subnet-cidr-block" {
    type = list
}
variable "public-subnet-name" {
    type = list
}

variable "int-gw" {
    type = string 
}
variable "route_cidr_block" {
    type = string
}
variable "route-name" {
    type = string 
}
variable "allowed" {
    type = string
}
variable "prtcl" {
    type = string
}
variable "egress-port" {
    type = number
}
variable "ingress-ssh" {
    type = number
}
variable "ingress-apache" {
    type = number
}
variable "ami-id" {
    type = string
}
variable "inst-type" {
    type = string
}
variable "public-ip" {
    type = bool 
}

variable "nt" {
    type = string
}
variable "private-route" {
    type = string
}
variable "map" {
    type =list
}