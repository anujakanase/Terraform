provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "myweb" {
    instance_type = "t3.micro"
    ami =  "ami-05d2d839d4f73aafb"
    subnet_id = "subnet-08d9247996839b46c"
}

resource "aws_s3_bucket" "s3_bucket" {
    bucket = "mybucket-s3-0909-abc"
  
}