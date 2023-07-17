variable "project_id" {
    description = "The Azure DevOps project Id"
    type = string
}

variable "variable_group_name" {
    description = "The name of the variable group, must be unique per library"
    type = string
}

variable "variable_group_description" {
    description = "The description of the variable group"
}

variable "variable_group_variables" {
    description = "A map of variables to add to the variable group"
    type = map(object({
        name = string
        value = string
        is_secret = bool
        secret_value = string
    }))
}