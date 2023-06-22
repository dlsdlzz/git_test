resource "aws_vpc" "vscode-vpc" {
    cidr_block = "20.0.0.0/16"
    enable_dns_hostnames = true
    enable_dns_support = true
    instance_tenancy = "default" 

    tags = {
        Name = "vscode-vpc"
    }
}

resource "aws_subnet" "public_subnet2a" {
    vpc_id = aws_vpc.vscode-vpc.id
    cidr_block = "20.3.0.0/24"
    availability_zone = "ap-northeast-2a"

    tags = {
        Name = "public_subnet2a"
    }
}