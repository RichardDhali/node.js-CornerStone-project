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




resource "aws_instance" "nodeDeploy" {
    ami = "ami-026b57f3c383c2eec"
    count = "1"
    key_name   = "Jenkins"
    instance_type = "t2.micro"
    security_groups = ["launch-wizard-1"]
    tags = {
        Name = "nodedeploy"
    } 
    user_data = file("node.sh")
   

}
