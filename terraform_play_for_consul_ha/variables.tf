variable "region" {  
  default = "us-west-2"
}

variable "availability_zone" {
  type = list(string)
  default = ["us-west-2a", "us-west-2b", "us-west-2c"]
}

variable "ami" {
  type = list(string)
  default = ["ami-0cfee17793b08a293","ami-0b37e9efc396e4c38","ami-09eb5e8a83c7aa890"]
}

variable "region_ami" {
  type = "map"
  default = {
    us-east-1 = "ami-0cfee17793b08a293"
    us-west-2 = "ami-0b37e9efc396e4c38"
    us-west-1 = "ami-09eb5e8a83c7aa890"
  }
}

variable "user" {
  type = "string"
  default = "ubuntu"
}

variable "provision_file" {
  type = "string"
  default = "script.sh"
}

variable "private_key" {
  type = "string"
  default = "master.pem"
}

variable "public_key" {
  type = "string"
  default = "/tmp/master.pem.pub"
}
