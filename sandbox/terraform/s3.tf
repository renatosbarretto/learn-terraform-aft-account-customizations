data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "sandbox_bucket" {
  bucket = "aft-sandbox-${data.aws_caller_identity.current.account_id}"
}

resource "aws_s3_bucket_acl" "sandbox_bucket_acl" {
  bucket = aws_s3_bucket.sandbox_bucket.id
  acl    = "private"
}

resource "aws_iam_role" "aft_states" {
  name = "aft-account-provisioning-customizations-role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Principal = {
          Service = "ec2.amazonaws.com"
        },
        Action = "sts:AssumeRole"
      }
    ]
  })
  # ... (adicione aqui outras policies ou argumentos necessários)
}