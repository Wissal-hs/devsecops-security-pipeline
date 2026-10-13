resource "aws_s3_bucket" "security_reports" {
  bucket_prefix = "${var.project_name}-reports-"

  tags = {
    Name        = "${var.project_name}-reports"
    Environment = "dev"
    Purpose     = "Security scan reports"
  }
}

resource "aws_s3_bucket_public_access_block" "security_reports" {
  bucket = aws_s3_bucket.security_reports.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "security_reports" {
  bucket = aws_s3_bucket.security_reports.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}
