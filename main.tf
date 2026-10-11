resource "google_bigquery_routine_iam_policy" "bigquery_routine_iam_policies" {
  for_each = var.bigquery_routine_iam_policies

  dataset_id  = each.value.dataset_id
  policy_data = each.value.policy_data
  routine_id  = each.value.routine_id
  project     = each.value.project
}

