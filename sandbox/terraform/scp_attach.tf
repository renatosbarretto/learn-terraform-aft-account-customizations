resource "aws_organizations_policy_attachment" "attach_scp_to_sandbox" {
  policy_id = "p-1d0zt48j"                          # Apenas o ID da SCP
  target_id = var.account_id                        # Injetado automaticamente
}
