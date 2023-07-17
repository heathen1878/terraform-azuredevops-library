resource "azuredevops_variable_group" "variable_group" {
    project_id = var.project_id
    name = var.variable_group_name
    description = var.variable_group_description

    dynamic "variable" {
        for_each = var.variable_group_variables

        content {
            name = variable.name
            value = variable.value
            is_secret = variable.is_secret
            secret_value = variable.secret_value
        }
    }
}
