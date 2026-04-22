
terraform {
  backend "s3" {
    bucket         = "mybucket-s3-0909-abc" 
    key            = "anu/terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
  
  }
}
