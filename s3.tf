resource "aws_s3_bucket" "demo" {
  bucket        = "mani-terraform-bucket"
  force_destroy = true
}
