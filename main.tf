resource "azuredevops_variable_group" "variable_group" {
<<<<<<< Updated upstream
  project_id  = var.project_id
  name        = var.variable_group_name
  description = var.variable_group_description
=======
  project_id   = var.project_id
  name         = var.variable_group_name
  description  = var.variable_group_description
  allow_access = var.allow_access
>>>>>>> Stashed changes

  dynamic "variable" {
    for_each = var.variable_group_variables

    content {
      name         = variable.value["name"]
      value        = variable.value["value"]
      is_secret    = variable.value["is_secret"]
      secret_value = variable.value["secret_value"]
    }
  }
}
