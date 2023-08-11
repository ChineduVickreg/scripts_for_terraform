terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.8.0"
    }
  }
}
provider "aws" {
  region = "us-east-1"

}
 
terraform {
   backend "s3" {
       bucket = "Remote_State_S3_Bucket_Name_terraform"
       key    = "terraform/production"
       region = "us-east-1"
   }
}

