resource "aws_s3_bucket" "test" {
  bucket = "test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.test.id
  acl    = "private"
}