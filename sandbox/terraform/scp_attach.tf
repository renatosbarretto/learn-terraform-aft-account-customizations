  resource "aws_organizations_policy_attachment" "attach_scp_to_sandbox" {
    provider  = aws.org
    policy_id = "p-1d0zt48j"
    target_id = var.account_id
  }