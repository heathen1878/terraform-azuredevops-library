resource "azuredevops_variable_group" "variable_group" {
  project_id   = var.project_id
  name         = var.group_name
  description  = var.group_description
  allow_access = var.allow_access

  dynamic "variable" {
    for_each = var.variables

    content {
      name         = variable.value.name
      value        = variable.value.value
      is_secret    = variable.value.is_secret
      secret_value = variable.value.secret_value
    }
  }
}
