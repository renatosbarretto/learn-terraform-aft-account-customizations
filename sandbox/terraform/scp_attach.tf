resource "aws_organizations_policy_attachment" "attach_scp_sandbox" {
  policy_id = "p-1d0zt48j" # Apenas o ID da política, não o ARN completo
  target_id = "350910063325" # ID da conta sandbox
}