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




resource "aws_instance" "ELKDeploy" {
    ami = "ami-026b57f3c383c2eec"
    count = "1"
    key_name   = "Jenkins"
    instance_type = "t3.large"
    security_groups = ["launch-wizard-1"]
    tags = {
        Name = "ELK-Stack-deploy"
    } 
    user_data = file("elk.sh")
   

}
