terraform {
  backend "s3" {
    bucket         = "eks-tf-yella"
    key            = "eks/dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock"
  }
}
