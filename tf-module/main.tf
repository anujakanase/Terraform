provider "aws" {
    region = "ap-south-1"
}
module "ec2_instance" {
  source = "./modules/ec2-instance"
  ami_value = "ami-05d2d839d4f73aafb"
  instance_type_value = "t3.micro"

}
