variable "project_id" {
  description = "The Azure DevOps project Id"
  type        = string
}

variable "allow_access" {
  description = "Should this variable group be shared by all pipelines?"
  type        = bool
  default     = true
}

variable "group_name" {
  description = "The name of the variable group, must be unique per library"
  type        = string
}

variable "group_description" {
  description = "The description of the variable group"
  type        = string
}

variable "variables" {
  description = "A map of variables to add to the variable group"
  type = map(object(
    {
      name         = string
      value        = string
      is_secret    = bool
      secret_value = string
    }
  ))
}