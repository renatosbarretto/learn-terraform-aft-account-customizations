  provider "aws" {
    alias  = "org"
    region = "us-east-2"
    assume_role {
      role_arn = "arn:aws:iam::972251037642:role/AWSAFTExecution"
    }
  }

  resource "aws_organizations_policy_attachment" "attach_scp_to_sandbox" {
    provider  = aws.org
    policy_id = "p-1d0zt48j"
    target_id = var.account_id
  }