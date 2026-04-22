provider "aws" {
    region = "ap-south-1"
}
    provider "vault" {
  address = "http://3.108.56.82:8200"
  skip_child_token = true

  auth_login {
    path = "auth/approle/login"

    parameters = {
      role_id = "907cf40c-8deb-3759-a7e9-4d8268b0c61c"
      secret_id = "155a8126-6e8e-dc9c-7838-d3d62ec6e38e"
    }
  }
}
data "vault_kv_secret_v2" "example" {
  mount = "kv" 
  name  = "test-secret" 
}
  

resource "aws_instance" "example" {
    ami = "ami-05d2d839d4f73aafb"
instance_type = "t3.micro"

  tags = {
    secret = data.vault_kv_secret_v2.example.data["username"]
  }
  }
