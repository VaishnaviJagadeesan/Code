#Declaring AWS Provider and credentials
provider "aws" {
  region     = "us-west-1"
  access_key = "AKIAXMQEBDIIGDZRJ6U2"
  secret_key = "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"
}
#######################################################
#Creating Production VPC with CIDR: 10.0.0.0/16
resource "aws_vpc" "vpc" {
    cidr_block = "10.0.0.0/16" 
    tags = {
        Name = "VVPC"
    }
}
output "vpcid" {
  value = aws_vpc.vpc.id
}
###########################################################
