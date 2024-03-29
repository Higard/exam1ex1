#Run First
resource "aws_s3_bucket" "myS3Bucket" {
  bucket = "mybuket98314"
  acl    = "private"
}

#uncoment and run after first apply
# terraform {
#   required_version = ">= 0.12"
#   backend "s3" {
#     bucket = "mybuket98314"
#     key    = "terraform/state"
#     region = "us-east-1"
#   }
# }
