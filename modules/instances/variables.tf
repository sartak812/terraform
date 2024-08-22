variable "public_subnet_id_from_network" {
  type = string
}
variable "private_subnet_id_from_network" {
  type = string
}
variable "ami" {
  default = "ami-0ae8f15ae66fe8cda"
  type    = string
}
variable "instance_type" {
  default = "t2.micro"
  type    = string
}
