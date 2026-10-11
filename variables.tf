variable "bigquery_routine_iam_policies" {
  description = <<EOT
Map of bigquery_routine_iam_policies, attributes below
Required:
    - dataset_id
    - policy_data
    - routine_id
Optional:
    - project
EOT

  type = map(object({
    dataset_id  = string
    policy_data = string
    routine_id  = string
    project     = optional(string)
  }))
}

