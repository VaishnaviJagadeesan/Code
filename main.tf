provider "aws" {
  region     = "us-west-1"
  access_key = "AKIAXMQEBDIIORQV7ZGR"
  secret_key = "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"
}
#######################################################
#Creating Production VPC with CIDR: 10.0.0.0/16
resource "aws_vpc" "vpc" {
    cidr_block = "10.0.0.0/16" 
    tags = {
        Name = "UAT VPC"
    }
}
output "vpcid" {
  value = aws_vpc.vpc.id
}
###########################################################
