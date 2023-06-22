variable "vpc_cidr" {
    default = "20.3.0.0/16"
}

variable "public_subnet" {
    type = list
    default = ["20.3.0.0/24","20.3.16.0/24"]
}

variable "private_subnet" {
    type = list
    default = ["20.3.64.0/24","10.3.80.0/24"]
}

variable "azs" {
    type = list
    default = ["ap-northast-2a", "ap-northeast-2c"]
}