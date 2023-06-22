terraform {
    backend "s3" {
        bucket = "aws-terraformm-state"
        key = "infra/network/vpc/terraform.tfstate"
        region = "ap-northeast-2"

        dynamodb_table = "aws-terraform-locks"
        encrypt = true
    }
}