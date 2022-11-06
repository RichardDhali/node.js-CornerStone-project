# terraform {
#     required_version = "1.3.4"
#     required_providers {
#         aws = {
#             source = "hashicorp/aws"
#             version = "4.16"
#         }
#     }
# }


 provider "aws" {
   region  = "us-east-1"
}




resource "aws_instance" "deploy" {
    ami = "ami-09d3b3274b6c5d4aa"
    count = "1"
    key_name   = "abelkp"
    instance_type = "t2.micro"
    security_groups = ["launch-wizard-1"]
    tags = {
        Name = "deploy"
    } 
    user_data = file("node.sh")
   

}
