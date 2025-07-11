module "variable" {

  source = "../.."

  project_id        = var.project_id
  group_description = "Example Variable Group with a variable"
  group_name        = "example-group"
  variables = {
    example = {
      name         = "example"
      value        = "example"
      is_secret    = null
      secret_value = null
    }
  }
}