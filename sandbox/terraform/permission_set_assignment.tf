resource "aws_ssoadmin_account_assignment" "sandbox_readonly_user" {
  instance_arn       = "arn:aws:sso:::instance/ssoins-668407c061b747ef"
  permission_set_arn = "arn:aws:sso:::permissionSet/ssoins-668407c061b747ef/ps-ddab6694a18509de"
  principal_id       = "21fba5b0-30d1-70a0-ce09-df5644df2536"
  principal_type     = "USER"
  target_id          = var.account_id
  target_type        = "AWS_ACCOUNT"
}

resource "aws_ssoadmin_account_assignment" "sandbox_readonly_group" {
  instance_arn       = "arn:aws:sso:::instance/ssoins-668407c061b747ef"
  permission_set_arn = "arn:aws:sso:::permissionSet/ssoins-668407c061b747ef/ps-ddab6694a18509de"
  principal_id       = "911b4550-20f1-7091-c1e1-9ee17243921f"
  principal_type     = "GROUP"
  target_id          = var.account_id
  target_type        = "AWS_ACCOUNT"
} 