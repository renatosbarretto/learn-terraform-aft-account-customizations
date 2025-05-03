data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "sandbox_bucket" {
  bucket = "aft-sandbox-${data.aws_caller_identity.current.account_id}"
  acl    = "private"
}
resource "aws_iam_role" "aft_states" {
  name = "aft-account-provisioning-customizations-role"
  # ... (outros argumentos necessários, como assume_role_policy)
}